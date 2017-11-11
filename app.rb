require 'sinatra'
require './lib/map'

$message
$comando


partida = Map.new()

get '/' do
  erb :menu 
end

get '/gameOption' do
  erb :opcionJuego 
end

get '/game' do
  $posPlayer = "Estas en la caverna " + partida.reportPosicionPlayer.to_s
  $messageCaverns = "Tienes acceso a las cavernas del: " + partida.reportPosicionesAMoverse
  $message = "Elige una jugada: moverse 'M', lanzar flecha 'F' o usar sprite 'S' y presione Enter."
  erb :juego
end

post '/game' do
  comando= params[:instruccion].to_s

  if (comando == 'M' || comando == 'm')

  	
	$posPlayer = "Estas en la caverna " + partida.reportPosicionPlayer.to_s
	$messageCaverns = "Tienes acceso a las cavernas del: " + partida.reportPosicionesAMoverse
	$message = "Elige una jugada: moverse 'M', lanzar flecha 'F' o usar sprite 'S' y presione Enter."
  	$mensaje = "Indique a que punto cardinal quiere ir: "
  	erb :movida
    
  else
  	$messageError = "Letra incorrecta, vuelva a ingresar su opción."
  	erb :juego
  end
  
end


post '/movida' do
  comando= params[:instruccion].to_s

  if (comando == 'N' || comando == 'n')
  	if (partida.hasAccessToNorth)
  		  partida.moveToNorth
  		  $posPlayer = "Estas en la caverna " + partida.reportPosicionPlayer.to_s
		  $messageCaverns = "Tienes acceso a las cavernas del: " + partida.reportPosicionesAMoverse
		  $message = "Elige una jugada: moverse 'M', lanzar flecha 'F' o usar sprite 'S' y presione Enter."
		  erb :juego
  	else
  		$messageError = "No se puede ir a esa dirección."
  		erb :movida
  	end
  elsif (comando == 'S' || comando == 's')
  	if (partida.hasAccessToSouth)
  		  partida.moveToSouth
  		  $posPlayer = "Estas en la caverna " + partida.reportPosicionPlayer.to_s
		  $messageCaverns = "Tienes acceso a las cavernas del: " + partida.reportPosicionesAMoverse
		  $message = "Elige una jugada: moverse 'M', lanzar flecha 'F' o usar sprite 'S' y presione Enter."
		  erb :juego
  	else
  		$messageError = "No se puede ir a esa dirección."
  		erb :movida
  	end
  elsif (comando == 'E' || comando == 'e')
  	if (partida.hasAccessToEast)
  		  partida.moveToEast
  		  $posPlayer = "Estas en la caverna " + partida.reportPosicionPlayer.to_s
		  $messageCaverns = "Tienes acceso a las cavernas del: " + partida.reportPosicionesAMoverse
		  $message = "Elige una jugada: moverse 'M', lanzar flecha 'F' o usar sprite 'S' y presione Enter."
		  erb :juego
  	else
  		$messageError = "No se puede ir a esa dirección."
  		erb :movida
  	end
  elsif (comando == 'O' || comando == 'o')
  	if (partida.hasAccessToWest)
  		  partida.moveToWest
  		  $posPlayer = "Estas en la caverna " + partida.reportPosicionPlayer.to_s
		  $messageCaverns = "Tienes acceso a las cavernas del: " + partida.reportPosicionesAMoverse
		  $message = "Elige una jugada: moverse 'M', lanzar flecha 'F' o usar sprite 'S' y presione Enter."
		  erb :juego
  	else
  		$messageError = "No se puede ir a esa dirección."
  		erb :movida
  	end
  else
  	$messageError = "No se puede ir a esa dirección."
  	erb :movida
  end
  
end
