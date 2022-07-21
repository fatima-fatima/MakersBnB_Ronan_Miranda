require 'pg'

class Space
  def self.all
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'makersbnb_test')
    else
      connection = PG.connect(dbname: 'makersbnb')
    end
    result= connection.exec("SELECT * FROM spaces;")
    result.map { | row | row }
  end

  def self.create(name, address, price, start_date, end_date)
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'makersbnb_test')
    else
      connection = PG.connect(dbname: 'makersbnb')
    end
    connection.exec("INSERT INTO spaces (name, address, price, start_date, end_date) VALUES ('#{name}', '#{address}', '#{price}', '#{start_date}', '#{end_date}');")   
  end
end
