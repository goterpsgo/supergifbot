require 'sinatra'
require 'sinatra/activerecord'

db = URI.parse('postgres://olppaojfzwabav:yqgFR3QWx_0iY0oBkuauAosQcO@ec2-54-243-49-82.compute-1.amazonaws.com/d8eiud4v0v2f6q')

ActiveRecord::Base.establish_connection(
)
