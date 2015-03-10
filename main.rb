require 'sinatra'
require 'sqlite3'
require 'json'
require 'pry'

require_relative 'models/product_class'
require_relative 'database_setup.rb'

get "/" do 
  erb :index
end

get "/view/:id" do
  product = Product.find(params[:id])
  product_hash = product.to_hash
  product_hash.to_json
end

get "/create" do
  
end

get "/edit/:id" do
  
end

get "/delete/:id" do
  Product.delete(params[:id])
end