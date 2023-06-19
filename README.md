Prerequisites
The setups steps expect following tools installed on the system.
Github
Ruby 3.1.2
Rails 7.0.5
1. Check out the repository
    git clone https://github.com/VeraStorozhenko/PhoneBookApp.git
2. Run the following commands to create and setup the database.
    bundle exec rake db:create
    bundle exec rake db:setup
3. Start the Rails server
   You can start the rails server using the command given below.
    bundle exec rails s
4. And now you can visit the site with the URL http://localhost:3000