# MakersBnB_Ronan_Miranda

1. Our web app will have a login button on the homepage. this directs you to a log in page that requests an email and password. (Maybe through a form)
The homepage will have a sign up box that requests an email address, password and password confirmation. 

2. Both pages will then lead you to book a space page that consists of a button called "List a space". 
book a space page has a form to make a query. Query is "Available from and Available to". 

3. List a space button directs you to a page that consists of a form to make a post request. 
    Inputs include
    1. name
    2. description
    3. price per night (£)
    4. Availability Dates from and to.

4. Book a space page lists all available spaces. (query made to database) Selecting the dates queries the database and returns available properties. 
Clicking on a property books it and adds it to your list of booked spaces.

5. Requests:

Page lists requests you've made, and requests you've recieved

5. / *Follow on from requests*
redirect page takes you to confirm/deny request page


------------------------------------------------------------------------------------------------------------
*USER STORIES*
<!-- As a host
So I can add my spaces
I can list a new space --> 

<!-- As a host
So I can add different spaces
I can add more than one space -->

<!-- As a host
So I can show details regarding my space
I'd like to list the name, a bio and a price-per-night -->
<!-- 
As a host
So I can show dates available for my space
I'd like to provide dates that my space is available so other
users can see -->

<!-- As a host
So I can add spaces
I can sign up -->

As a host
If I have an account
I can Sign in

As a host
So I can approve/disapprove hire requests
I'd like to see individual booking requests

As a host
If the booking hasnt been confirmed
The space should still be available

As a user
So I can request hire of a space
I'd like to send a booking request to the owner

As a user
I shouldnt be able to see pre-booked places
I shouldnt be able to book these slots
------------------------------------------------------------------------------------------------------------

SETTING UP THE DATABASE
1. run: psql
2. CREATE DATABASE makersbnb
3. To create a table- run the sql command in db/migrations/01_create_spaces_table.sql
4. After creating the database, run the command in db/migrations/02_date_collumn_datatype.sql (modifies the erroneous datatype for start date, end date to be the correct DATE format)
5. To create the user table, run the sql command in db/migrations/03_create_user_table.sql

SETTING UP THE TEST DATABASE
1. run: psql
2. CREATE DATABASE makersbnb_test;
3. To create a table- run the sql command in 01_db/migrations/create_spaces_table.sql
4. After creating the test database, run the command in 02_date_collumn_datatype.sql (modifies the erroneous datatype for start date, end date to be the correct DATE format)
5. To create the user table, run the sql command in db/migrations/03_create_user_table.sql
-------------------------------

BEFORE RUNNING THE PROGRAM

bundle install

-------------------------------

Query to add to the database: INSERT INTO spaces (name, address, price) VALUES ('Buckingham Palace', 'Queens Drive', 150);
                              INSERT INTO spaces (name, address, price) VALUES ('Ceasars Palace', 'Las Vegas', 250);

