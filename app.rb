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

class Contact < ActiveRecord::Base
end

before do
    @barbers = Barber.all
end

get '/' do
  erb :index
end

get '/visit' do
  erb :visit
end
get '/contacts' do
  erb :contacts
end

post '/visit' do
  @username = params[:username]
  @phone = params[:phone]
  @datestamp = params[:datestamp]
  @hairdresser = params[:hairdresser]
  @color = params[:color]

  Client.create(name: @username, phone: @phone, datestamp: @datestamp, barber: @hairdresser, color: @color)
  erb :visit
end

post '/contacts' do
  @mail = params[:mail]
  @textbox = params[:textbox]

  Contact.create(mail: @mail, message: @textbox)

  erb :contacts
end
