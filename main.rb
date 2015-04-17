# require 'gemfile'
# require 'bundler/setup'


require 'sinatra'
require 'sqlite3'
require 'json'
require 'pry'

require 'sinatra/activerecord'

set :database, {adapter: "sqlite3", database: "products.db"}

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


# Not actually passing params...need to come back and fix this.
get "/create" do
  p1 = Product.new(params)
  p1.insert
end

get "/edit/:id" do
  
end

get "/delete/:id" do
  Product.delete(params[:id])
end