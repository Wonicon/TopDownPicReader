require 'sinatra'

get '/dir/*' do
  path = params['splat'][0]
  title = path.split('/')[-1]
  erb :index, :locals => {
    :files => Dir["/#{path}/*"].sort,
    :title => title
  }
end

get '/img/*' do
  filename = params['splat'][0]
  # [1..-1] is used to jump the leading '.' such as in '.jpg'.
  content_type "image/#{File.extname(filename)[1..-1]}"
  File.read("/#{filename}")
end
