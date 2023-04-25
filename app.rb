#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, {adapter: "sqlite3", database: "barbershop.db"}

class Client < ActiveRecord::Base
end

class Barber < ActiveRecord::Base
end

before do
	@barbers= Barber.all
end

get '/' do
	@barbers= Barber.all
	erb :index
end


get '/visit' do
	erb :visit
end

post'/visit' do
	@phone=params[:number]
	@datetime=params[:datetime]
	@username=params[:username]
	@barber=params[:barber]
	@color=params[:color]

	erb "<h2>Спасибо,вы записаны</h2>" 
end
