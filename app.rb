require 'sinatra'
require './lib/map'
require './lib/cavern'
require './lib/player'


get '/' do
  erb :menu 
end

get '/gameOption' do
	$partida = Map.new() 
	$messageError=""
	$arrowPlayer="" 
	erb :opcionJuego
end



get '/gameCaverns' do
	$posPlayer = "Estas en la caverna " + $partida.reportPosicionPlayer.to_s
	player=$partida.getPlayer
	$arrowPlayer="Numero de flechas: "+player.getArrows.to_s
	$hasAccessToNorth = $partida.hasAccessToNorth
	$hasAccessToEast = $partida.hasAccessToEast
	$hasAccessToWest = $partida.hasAccessToWest
	$hasAccessToSouth = $partida.hasAccessToSouth 
	erb :gameCaverns
end

post '/optionPlay' do
	jugada=params[:jugada]
	puntoCardinal=params[:puntoCardinal]
	 
	if (jugada == 'move')
		if (puntoCardinal == 'norte')
			$partida.moveToNorth
			$partida.collectArrow
			$posPlayer = "Estas en la caverna " + $partida.reportPosicionPlayer.to_s
			player=$partida.getPlayer
			$arrowPlayer="Numero de flechas: "+player.getArrows.to_s
			$hasAccessToNorth = $partida.hasAccessToNorth
			$hasAccessToEast = $partida.hasAccessToEast
			$hasAccessToWest = $partida.hasAccessToWest
			$hasAccessToSouth = $partida.hasAccessToSouth
			erb :gameCaverns 
		elsif (puntoCardinal == 'este')
			$partida.moveToEast
			$partida.collectArrow
			$posPlayer = "Estas en la caverna " + $partida.reportPosicionPlayer.to_s
			player=$partida.getPlayer
			$arrowPlayer="Numero de flechas: "+player.getArrows.to_s
			$hasAccessToNorth = $partida.hasAccessToNorth
			$hasAccessToEast = $partida.hasAccessToEast
			$hasAccessToWest = $partida.hasAccessToWest
			$hasAccessToSouth = $partida.hasAccessToSouth
			erb :gameCaverns
		elsif (puntoCardinal == 'oeste')
			$partida.moveToWest
			$partida.collectArrow
			$posPlayer = "Estas en la caverna " + $partida.reportPosicionPlayer.to_s
			player=$partida.getPlayer
			$arrowPlayer="Numero de flechas: "+player.getArrows.to_s
			$hasAccessToNorth = $partida.hasAccessToNorth
			$hasAccessToEast = $partida.hasAccessToEast
			$hasAccessToWest = $partida.hasAccessToWest
			$hasAccessToSouth = $partida.hasAccessToSouth
			erb :gameCaverns
		else
			$partida.moveToSouth
			$partida.collectArrow
			$posPlayer = "Estas en la caverna " + $partida.reportPosicionPlayer.to_s
			player=$partida.getPlayer
			$arrowPlayer="Numero de flechas: "+player.getArrows.to_s
			$hasAccessToNorth = $partida.hasAccessToNorth
			$hasAccessToEast = $partida.hasAccessToEast
			$hasAccessToWest = $partida.hasAccessToWest
			$hasAccessToSouth = $partida.hasAccessToSouth
			erb :gameCaverns
		end 
		 
	elsif (jugada == 'arrow') 
		if (puntoCardinal == 'norte')
			$partida.shootToNorth
			player=$partida.getPlayer
			$arrowPlayer="Numero de flechas: "+player.getArrows.to_s
			erb :gameCaverns
		elsif (puntoCardinal == 'este')
			$partida.shootToEast
			player=$partida.getPlayer
			$arrowPlayer="Numero de flechas: "+player.getArrows.to_s
			erb :gameCaverns
		elsif (puntoCardinal == 'oeste')
			$partida.shootToWest
			player=$partida.getPlayer
			$arrowPlayer="Numero de flechas: "+player.getArrows.to_s
			erb :gameCaverns
		else
			$partida.shootToSouth 
			player=$partida.getPlayer
			$arrowPlayer="Numero de flechas: "+player.getArrows.to_s 
			erb :gameCaverns
		end  
	elsif (jugada == 'spray')
		if (puntoCardinal == 'norte')
			erb :gameCaverns
		elsif (puntoCardinal == 'este')
			erb :gameCaverns
		elsif (puntoCardinal == 'oeste')
			erb :gameCaverns
		else
			erb :gameCaverns
		end
	end 

end

