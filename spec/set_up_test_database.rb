require 'pg'

p "Setting up test database..."

connection = PG.connect(dbname: 'makersbnb_test')

# Clear the bookmarks table
connection.exec("TRUNCATE spaces;")