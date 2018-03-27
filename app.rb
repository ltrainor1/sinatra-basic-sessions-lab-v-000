require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base

  configure do
  enable :sessions
  set :session_secret, "secret"
  binding.pry
end

get '/' do
  @session = session
  erb :item 
end

get '/item' do
  erb :checkout
end

end
