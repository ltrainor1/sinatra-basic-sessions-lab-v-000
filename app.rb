require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base

  configure do
  enable :sessions
  set :session_secret, "secret"
end

get '/' do
  @session = session
  @session[:name] = "test"
  binding.pry
  erb :item
end

get '/item' do
  erb :checkout
end

end
