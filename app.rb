require 'sinatra'
require './lib/map'
require './lib/cavern'
require './lib/caverns'
require './lib/player'

$message
$comando


$partida

get '/' do
  erb :menu 
end

get '/gameOption' do
	$partida = Map.new() 
	$messageError="" 
	erb :opcionJuego
end

get '/game' do
  $posPlayer = "Estas en la caverna " + $partida.reportPosicionPlayer.to_s
  $messageCaverns = "Tienes acceso a las cavernas del: " + $partida.reportPosicionesAMoverse
  $message = "Elige una jugada: moverse 'M', lanzar flecha 'F' o usar sprite 'S' y presione Enter."
  erb :juego
end

post '/game' do
  comando= params[:instruccion].to_s

  if (comando == 'M' || comando == 'm')
		$messageError="" 
		$posPlayer = "Estas en la caverna " + $partida.reportPosicionPlayer.to_s
		$messageCaverns = "Tienes acceso a las cavernas del: " + $partida.reportPosicionesAMoverse
		$message = "Elige una jugada: moverse 'M', lanzar flecha 'F' o usar sprite 'S' y presione Enter."
	 	$mensaje = "Indique a que punto cardinal quiere ir: "
  	erb :movida
    
	elsif (comando == 'F' || comando == 'f')
		if($partida.getPlayer.getArrows.to_i<=0)
			$messageError = "No tiene suficientes flechas."
			erb :juego
		else
			$messageError=""
			$posPlayer = "Estas en la caverna " + $partida.reportPosicionPlayer.to_s
			$messageCaverns = "Tienes acceso a las cavernas del: " + $partida.reportPosicionesAMoverse
			$message = "Elige una jugada: moverse 'M', lanzar flecha 'F' o usar sprite 'S' y presione Enter."
			 $mensaje = "Indique a que punto cardinal quiere lanzar la flecha: "
			erb :disparo
		end
	else
			$messageError = "Letra incorrecta, vuelva a ingresar su opción."
			erb :juego
	end
	
	
  
end

#movimientos
post '/movida' do
  comando= params[:instruccion].to_s

	if (comando == 'N' || comando == 'n')
		$messageError=""
  	if ($partida.hasAccessToNorth)
  		  $partida.moveToNorth
  		  $posPlayer = "Estas en la caverna " + $partida.reportPosicionPlayer.to_s
		  $messageCaverns = "Tienes acceso a las cavernas del: " + $partida.reportPosicionesAMoverse
		  $message = "Elige una jugada: moverse 'M', lanzar flecha 'F' o usar sprite 'S' y presione Enter."
		  erb :juego
  	else
  		$messageError = "No se puede ir a esa dirección."
  		erb :movida
  	end
	elsif (comando == 'S' || comando == 's')
		$messageError=""
  	if ($partida.hasAccessToSouth)
  		  $partida.moveToSouth
  		  $posPlayer = "Estas en la caverna " + $partida.reportPosicionPlayer.to_s
		  $messageCaverns = "Tienes acceso a las cavernas del: " + $partida.reportPosicionesAMoverse
		  $message = "Elige una jugada: moverse 'M', lanzar flecha 'F' o usar sprite 'S' y presione Enter."
		  erb :juego
  	else
  		$messageError = "No se puede ir a esa dirección."
  		erb :movida
  	end
	elsif (comando == 'E' || comando == 'e')
		$messageError=""
  	if ($partida.hasAccessToEast)
  		  $partida.moveToEast
  		  $posPlayer = "Estas en la caverna " + $partida.reportPosicionPlayer.to_s
		  $messageCaverns = "Tienes acceso a las cavernas del: " + $partida.reportPosicionesAMoverse
		  $message = "Elige una jugada: moverse 'M', lanzar flecha 'F' o usar sprite 'S' y presione Enter."
		  erb :juego
  	else
  		$messageError = "No se puede ir a esa dirección."
  		erb :movida
  	end
	elsif (comando == 'O' || comando == 'o')
		$messageError=""
  	if ($partida.hasAccessToWest)
  		  $partida.moveToWest
  		  $posPlayer = "Estas en la caverna " + $partida.reportPosicionPlayer.to_s
		  $messageCaverns = "Tienes acceso a las cavernas del: " + $partida.reportPosicionesAMoverse
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

#disparos
post '/disparo' do
	comando= params[:instruccion].to_s
	@player
	@arrowsPlayer
	@arrows
	if (comando == 'N' || comando == 'n')
		$messageError=""
		if ($partida.hasAccessToNorth)
			@player=$partida.getPlayer
			@arrowsPlayer=@player.getArrows
			 @player.setArrows=@arrowsPlayer.to_i - 1
			$partida.setPlayer=@player
			@arrows = @player.getArrows
		
  		  $posPlayer = "Estas en la caverna " + $partida.reportPosicionPlayer.to_s
		  $messageCaverns = "Tienes acceso a las cavernas del: " + $partida.reportPosicionesAMoverse
		  $message = "Elige una jugada: moverse 'M', lanzar flecha 'F' o usar sprite 'S' y presione Enter."
			$messageError = "La flecha falló, el número de flechas restantes es: "+@arrows.to_s
			erb :juego
		else
  		$messageError = "No se puede lanzar a esa dirección."+@arrows.to_s
  		erb :disparo
  	end
	elsif (comando == 'S' || comando == 's')
		$messageError=""
		if ($partida.hasAccessToSouth)
			@player=$partida.getPlayer
			@arrowsPlayer=@player.getArrows
			 @player.setArrows=@arrowsPlayer.to_i - 1
			$partida.setPlayer=@player
			@arrows = @player.getArrows
			
  		  $posPlayer = "Estas en la caverna " + $partida.reportPosicionPlayer.to_s
		  $messageCaverns = "Tienes acceso a las cavernas del: " + $partida.reportPosicionesAMoverse
		  $message = "Elige una jugada: moverse 'M', lanzar flecha 'F' o usar sprite 'S' y presione Enter."
			$messageError = "La flecha falló, el número de flechas restantes es: "+@arrows.to_s
			erb :juego
  	else
  		$messageError = "No se puede lanzar a esa dirección."+@arrows.to_s
  		erb :disparo
  	end
	elsif (comando == 'E' || comando == 'e')
		$messageError=""
		if ($partida.hasAccessToEast)
			@player=$partida.getPlayer
			@arrowsPlayer=@player.getArrows
			 @player.setArrows=@arrowsPlayer.to_i - 1
			$partida.setPlayer=@player
			@arrows = @player.getArrows

  		  $posPlayer = "Estas en la caverna " + $partida.reportPosicionPlayer.to_s
		  $messageCaverns = "Tienes acceso a las cavernas del: " + $partida.reportPosicionesAMoverse
		  $message = "Elige una jugada: moverse 'M', lanzar flecha 'F' o usar sprite 'S' y presione Enter."
			$messageError = "La flecha falló, el número de flechas restantes es: "+@arrows.to_s
			erb :juego
  	else
  		$messageError = "No se puede lanzar a esa dirección."+@arrows.to_s
  		erb :disparo
  	end
	elsif (comando == 'O' || comando == 'o')
		$messageError=""
		if ($partida.hasAccessToWest)
			@player=$partida.getPlayer
			@arrowsPlayer=@player.getArrows
			 @player.setArrows=@arrowsPlayer.to_i - 1
			$partida.setPlayer=@player
			@arrows = @player.getArrows

  		  $posPlayer = "Estas en la caverna " + $partida.reportPosicionPlayer.to_s
		  $messageCaverns = "Tienes acceso a las cavernas del: " + $partida.reportPosicionesAMoverse
		  $message = "Elige una jugada: moverse 'M', lanzar flecha 'F' o usar sprite 'S' y presione Enter."
			$messageError = "La flecha falló, el número de flechas restantes es: "+@arrows.to_s
			erb :juego
  	else
  		$messageError = "No se puede lanzar a esa dirección."+@arrows.to_s
  		erb :disparo
  	end
  else
  	$messageError = "No se puede lanzar a esa dirección."+@arrows.to_s
  	erb :disparo
  end
  
end