require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

# Создание подключения к БД
set :database, {adapter: "sqlite3", database: "barbershop.db"}

# Создание сущности
# создаю класс который наследуется от AR, что значит, что в классе Client
# будут все методы которые есть в ActiveRecord
class Client < ActiveRecord::Base
end

class Barber < ActiveRecord::Base
end



get '/' do
  @barber = Barber.all
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

