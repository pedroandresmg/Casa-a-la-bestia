require 'sinatra'

get '/' do
  erb :menu 
end

get '/gameOption' do
  erb :opcionJuego 
end


get '/game' do
  erb :juego
end

