Hair Salon App
========

by Alister Fenix

This is a very simple Hair Salon app that allows the user to create a list of hair stylist, and associate each one with a list of clients. All data that is input is stored in a postgres database.

Installation
------------

Install hair_salon by first cloning the repository.  
```
$ git clone http://github.com/afenix/hair_salon
```

```

Install all of the required gems:
```
$ gem pry
$ gem rspec
$ gem pg
$ gem sinatra
$ gem sinatra-contrib
$ bundle install

```
Install and start PostGres on system

```
```
$ brew install postgres
echo "export PGDATA=/usr/local/var/postgres" >> ~/.bash_profile
echo "export PGHOST=/tmp" >> ~/.bash_profile
source ~/.bash_profile

To start the Postgres server, simply run:
postgres

````
Start the webserver:

```
$ ruby app.rb
```

In your web browser, go to http://localhost:4567

Contribute
----------

- Issue Tracker: github.com/afenix/hair_salon
```/issues
- Source Code: github.com/afenix/hair_salon

Support
-------

This app is a work in progress.  By no means is it complete. However, if you are having issues, please let me know at: a.fenix@icloud.com

License
=======

Free and OS License. Code for the people by the people. 2015 Alister Fenix
