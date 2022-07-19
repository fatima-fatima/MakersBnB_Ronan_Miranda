require 'pg'

class Space
  def self.all
    connection = PG.connect(dbname: 'makersbnb')
    result = connection.exec("SELECT * FROM spaces;")
    result.map { | row | row['name'] }
  end
end
