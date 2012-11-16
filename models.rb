require 'rubygems'
require 'sinatra'
require 'data_mapper'

# Database connection string...
DataMapper.setup(:default, ENV['DATABASE_URL'] || "sqlite3://#{Dir.pwd}/development.db")

# The class that stores the code snippets...
class Snippet
	include DataMapper::Resource  
	property :id,           Serial # Serial -> auto increment after each new snippet
	property :email, 	String, :length => 255
	property :name,         String, :length => 255
	property :content,	Blob
	property :completed_at, DateTime

	
end

# Upgrade the database with any changes made to the Task class 
DataMapper.auto_upgrade! 
