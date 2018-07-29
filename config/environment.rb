require 'bundler'
require 'csv'
require './lib/queries'
Bundler.require

# Setup a DB connection here
#DB={conn: SQLite3::Database.new( filename ) }
DB = SQLite3::Database.new('db/daily_show_guests.db')
