require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

get '/' do
  erb :index
end

get '/page1' do
  erb :page1
end

get '/page2' do
  erb :page2
end

post '/' do
  erb :index
end

