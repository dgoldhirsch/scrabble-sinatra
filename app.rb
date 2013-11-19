set :haml, format: :html5

get '/' do
  haml :index
end

post '/challenges' do
  haml :post_challenge
end

