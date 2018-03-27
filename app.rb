require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base

  configure do
  enable :sessions
  set :session_secret, "secret"
end

get '/' do
  @session = session
  erb :item
end

get '/checkout' do
  session[:item] = params[:name]
  erb :checkout
end

end
