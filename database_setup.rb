require 'sqlite3'

DATABASE = SQLite3::Database.new("products.db")
DATABASE.results_as_hash = true

DATABASE.execute("CREATE TABLE IF NOT EXISTS products(id INTEGER PRIMARY KEY, general_info TEXT NOT NULL, 
                  technical_specs TEXT NOT NULL, where_to_buy TEXT NOT NULL)")
                  
                  
                  
################################################################################
                  
# For the "products" table, have fields for "general_info", "technical_specs", and "where_to_buy". These should be text fields that'll contain a sentence or two for each product.
# It's not important for this project whether you use a database adapter module from a past project or write your model methods from scratch. Just do what's easiest.
# Do build views and forms for the various actions. This is not an API project. It's a standard Sinatra resource application.

# product1 = Product.new({"general_info"=>"", "technical_specs"=>"", "where_to_buy"=>""})
# product2 = Product.new({"general_info"=>"", "technical_specs"=>"", "where_to_buy"=>""})
# product3 = Product.new({"general_info"=>"", "technical_specs"=>"", "where_to_buy"=>""})

                