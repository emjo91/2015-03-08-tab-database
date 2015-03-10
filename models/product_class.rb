class Product
  attr_reader :id
  
  attr_accessor :general_info, :technical_specs, :where_to_buy
  
  def initialize(options)
    @id = options["id"]
    @general_info = options["general_info"]
    @technical_specs = options["technical_specs"]
    @where_to_buy = options["where_to_buy"]
  end
  
  
  # This insert method IS working. - Tested.
  # This inserts new objects into the database.
  def insert
    DATABASE.execute("INSERT INTO products(general_info, technical_specs, where_to_buy) 
                      VALUES ('#{@general_info}', '#{@technical_specs}', '#{@where_to_buy}')")
    @id = DATABASE.last_insert_row_id
  end
  
  
  # This works. - Tested.
  # Finds an id record in the database, and returns the object.
  def self.find(id)
    result = DATABASE.execute("SELECT * FROM products WHERE id = #{id}")[0]
    self.new(result)
  end
  
  
  # This works. - Tested.
  # This updates a currently exisiting record, and returns the object of it.
  def update
    DATABASE.execute("UPDATE products SET id = #{@id}, general_info = '#{@general_info}', 
                               technical_specs = '#{@technical_specs}', where_to_buy = '#{@where_to_buy}' 
                               WHERE id = #{@id}")[0]
  end
  
  
  # This method does work. - Tested.
  # This deletes a particular record, in the slides table.
  def self.delete(id)
    DATABASE.execute("DELETE FROM products where id = #{id}")
  end
  
  
  # This works.
  # This terminate method is working.
  def self.terminate
    DATABASE.execute("DROP TABLE products")
  end
  
  
  # NOT TESTED
  def to_hash
    {
      id: id,
      general_info: general_info,
      where_to_buy: where_to_buy,
      technical_specs: technical_specs      
    }
  end
  
end #end Product Class