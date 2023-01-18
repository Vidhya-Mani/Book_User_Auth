## Flow of control from login to logout! 

<ul>Post -> http://127.0.0.1:3001/bookslogin -> User exist! Login successfull! 

### Cookie is generated and passed to browser! 
Only if the session_id is generated the user can perform CRUD operations on Bookstock. The user is now authorised to perform below actions:
Get  -> http://127.0.0.1:3001/bookstock -> displays all books.
Get -> http://127.0.0.1:3001/bookstock/5 -> displays individual books.
Post  -> http://127.0.0.1:3001/bookstock -> creates new books.
Put -> http://127.0.0.1:3001/bookstock/11 -> updates existing books.
Delete  -> http://127.0.0.1:3001/bookstock/11 -> deletes book with id sent.
Post -> http://127.0.0.1:3001/author -> search and displays all books in author name.
Post -> http://127.0.0.1:3001/bookname -> search and displays all details of that book.
Get -> http://127.0.0.1:3001/bookslogout -> deletes the session id created. 

The user is now unauthorised. Performing above operations will show no permission messages!

# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
