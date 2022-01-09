     
require 'sinatra' 
require 'sinatra/reloader'
require 'pg' 
require 'bcrypt'
require 'pry'

require_relative 'models/garden.rb'
require_relative 'models/user.rb'
require_relative 'controllers/user_controller'
require_relative 'controllers/garden_controller'

enable :sessions


get '/' do
  
  erb(:home)
end



get '/signup' do
  
  erb(:"user/signup")
end



get '/login' do
  
  erb(:"user/login")
end


get '/about' do
  
  erb(:about)
end

