require_relative 'config/application'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

# Debemos agregar estas configuraciones para
# para poder usar los metodos DELETE y PATCH
configure :development do
  use Rack::MethodOverride
end

# Home
get '/' do
  erb :home, layout: false
end

# Todos los restaurantes
get '/restaurants' do
  @restaurants = Restaurant.all
  erb :index
end

# Crear un nuevo restaurante
get '/restaurants/new' do
  erb :new
end

post '/restaurants' do
  attributes = {
    name: params[:name],
    city: params[:city],
    address: params[:address],
    image_url: params[:image_url],
    type_food: params[:type_food],
    phone_number: params[:phone_number]
  }
  Restaurant.create(attributes)
  redirect to '/restaurants'
end

# Encontrar un restaurante
get '/restaurants/:id' do
  @restaurant = Restaurant.find(params[:id])
  erb :show
end

# # Editar un restaurante
# get '/restaurants/:id/edit' do

# end

# path '/restaurants/:id' do

# end

# # Eliminar un restaurante
# delete '/restaurants/:id' do

# end
