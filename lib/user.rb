class User

    def self.all
        if ENV['ENVIRONMENT'] == 'test'
            connection = PG.connect(dbname: 'makersbnb_test')
          else
            connection = PG.connect(dbname: 'makersbnb')
        end
          result= connection.exec("SELECT * FROM users;")
          result.map { | row | row['name'] }
    end
    
    def self.create(username, email, password)
        if ENV['ENVIRONMENT'] == 'test'
            connection = PG.connect(dbname: 'makersbnb_test')
        else
            connection = PG.connect(dbname: 'makersbnb')
        end
        connection.exec("INSERT INTO users (name, email, password) VALUES ('#{username}', '#{email}', '#{password}');")   
        
    end
end
