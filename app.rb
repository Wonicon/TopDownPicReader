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
  File.read("/#{filename}")
end
