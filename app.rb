require 'sinatra'

Manga = Struct.new(:title, :cover, :code)

get '/' do
  mangas = Dir['*/'].map do |code|
    title = File.read(File.join(code, 'title')).chomp
    cover = Dir[File.join(code, '*.*')].sort[0]
    Manga.new(title, cover, code)
  end

  erb(:index, :locals => { :mangas => mangas })
end

# <host>/manga/<manga-code>
get '/manga/*' do
  code = params['splat'][0]
  title = File.read(File.join(code, 'title')).chomp
  erb :manga, :locals => {
    :files => Dir[File.join(code, '*.*')].sort,
    :title => title
  }
end

# <host>/image/<manga-code>/<img-filename>
get '/img/*' do
  filename = params['splat'][0]
  # [1..-1] is used to jump the leading '.' such as in '.jpg'.
  content_type "image/#{File.extname(filename)[1..-1]}"
  File.read("#{filename}")
end
