require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

# Создание подключения к БД
set :datebase, "sqlite3:barbershop.db"

# Создание сущности
# создаю класс который наследуется от AR
class Client < ActiveRecord::Base

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

