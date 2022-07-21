class User
    def self.login?(email, password)
        if ENV['ENVIRONMENT'] == 'test'
            connection = PG.connect(dbname: 'makersbnb_test')
          else
            connection = PG.connect(dbname: 'makersbnb')
        end
          result= connection.exec("SELECT * FROM users;")
          result.map do | row |  
            if row['email'] == email && row['password'] == password
                return true
            end
        end
        return false

    end

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
