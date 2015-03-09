require 'sinatra'
require 'sqlite3'
require 'pry'

require_relative 'models/product_class'
require_relative 'database_setup.rb'

get "/" do 
  erb :index
end