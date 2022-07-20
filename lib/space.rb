require 'pg'

class Space
  def self.all
    connection = PG.connect(dbname: 'makersbnb')
    result = connection.exec("SELECT * FROM spaces;")
    result.map { | row | row['name'] }
  end
  def self.create(name, address, price)
    connection = PG.connect(dbname: 'makersbnb')
    result = connection.exec("INSERT INTO spaces (name, address, price) VALUES ('#{name}', '#{address}', '#{price}');")   
    
  end




end
