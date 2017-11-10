require 'sinatra'

get '/' do
  erb :menu 
end

get '/gameOption' do
  erb :opcionJuego 
end


get '/game' do
  @statusMessage="Elige una jugada: moverse 'M', lanzar flecha 'F' o usar sprite 'S'."
  erb :juego
end

