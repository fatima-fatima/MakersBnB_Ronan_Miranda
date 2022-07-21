class User
    def self.login?(username, email, password)
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
  
        # if email == 'email@example.com' && password == 'password'
        #     return true
        # else
        #     return false
        # end
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
