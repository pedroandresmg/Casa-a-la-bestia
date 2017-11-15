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
	erb :opcionJuego
end



get '/gameCaverns' do
	$posPlayer = "Estas en la caverna " + $partida.reportPosicionPlayer.to_s
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
			$posPlayer = "Estas en la caverna " + $partida.reportPosicionPlayer.to_s
			$hasAccessToNorth = $partida.hasAccessToNorth
			$hasAccessToEast = $partida.hasAccessToEast
			$hasAccessToWest = $partida.hasAccessToWest
			$hasAccessToSouth = $partida.hasAccessToSouth
			erb :gameCaverns
		elsif (puntoCardinal == 'este')
			$partida.moveToEast
			$posPlayer = "Estas en la caverna " + $partida.reportPosicionPlayer.to_s
			$hasAccessToNorth = $partida.hasAccessToNorth
			$hasAccessToEast = $partida.hasAccessToEast
			$hasAccessToWest = $partida.hasAccessToWest
			$hasAccessToSouth = $partida.hasAccessToSouth
			erb :gameCaverns
		elsif (puntoCardinal == 'oeste')
			$partida.moveToWest
			$posPlayer = "Estas en la caverna " + $partida.reportPosicionPlayer.to_s
			$hasAccessToNorth = $partida.hasAccessToNorth
			$hasAccessToEast = $partida.hasAccessToEast
			$hasAccessToWest = $partida.hasAccessToWest
			$hasAccessToSouth = $partida.hasAccessToSouth
			erb :gameCaverns
		else
			$partida.moveToSouth
			$posPlayer = "Estas en la caverna " + $partida.reportPosicionPlayer.to_s
			$hasAccessToNorth = $partida.hasAccessToNorth
			$hasAccessToEast = $partida.hasAccessToEast
			$hasAccessToWest = $partida.hasAccessToWest
			$hasAccessToSouth = $partida.hasAccessToSouth
			erb :gameCaverns
		end
	elsif (jugada == 'arrow')
		if (puntoCardinal == 'norte')
			erb :gameCaverns
		elsif (puntoCardinal == 'este')
			erb :gameCaverns
		elsif (puntoCardinal == 'oeste')
			erb :gameCaverns
		else
			erb :gameCaverns
		end
	else		
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

