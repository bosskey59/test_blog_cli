require 'bundler/setup'
Bundler.require

require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection(
   :adapter => "sqlite3",
   :database => "db/blog.db"
)

require_all 'lib'