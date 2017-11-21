require 'sinatra'
require './lib/map'
require './lib/cavern'
require './lib/player'
 

 
get '/' do
  erb :home 
end

post '/' do
  erb :home
end

get '/gameOption' do 
	erb :gameOption
end
 
get '/gameCaverns' do 
	erb :gameCaverns
end

post '/gameCaverns' do
	$partida = Map.new()
	$jugada="move"
	$moverMonstruo="monsterMove" 
	$monsterDeathByArrow=true  
	$messageMonsterAlert = $partida.reportMonsterIsNear 
	$posPlayer = $partida.reportPosicionPlayer 
	$arrowPlayer = $partida.reportNumberArrows 
	$hasAccessToNorth = $partida.hasAccessToNorth
	$hasAccessToEast = $partida.hasAccessToEast
	$hasAccessToWest = $partida.hasAccessToWest
	$hasAccessToSouth = $partida.hasAccessToSouth
	$monsterAlert = $partida.isTheMonsterNear
	erb :gameCaverns  
end  
 

post '/optionPlay' do
	$jugada=params[:jugada]
	@puntoCardinal=params[:puntoCardinal].to_s
	$moverMonstruo=params[:moverMonstruo].to_S
	$partida.setAlertsToCavernsAboutMonster
	$monsterDeathByArrow=true 
	if ($jugada == 'arrow') 
		if (@puntoCardinal == 'norte')
			$partida.shootToNorth 
		elsif (@puntoCardinal == 'este')
			$partida.shootToEast 
		elsif (@puntoCardinal == 'oeste')
			$partida.shootToWest 
		else
			$partida.shootToSouth  
		end   
		if ($partida.thePlayerKilledTheMonster == false)
			$monsterDeathByArrow=false 
		end
	elsif ($jugada == 'spray')
		if (@puntoCardinal == 'norte')

		elsif (@puntoCardinal == 'este')

		elsif (@puntoCardinal == 'oeste')

		else

		end
		$monsterDeathByArrow=true 
	else
		if (@puntoCardinal == 'norte')
			$partida.moveToNorth 
		elsif (@puntoCardinal == 'este')
			$partida.moveToEast 
		elsif (@puntoCardinal == 'oeste')
			$partida.moveToWest 
		else
			$partida.moveToSouth 
		end
		$monsterDeathByArrow=true 
	end 

	if ($partida.theMonsterKilledThePlayer == true)
		erb :gameOver
	elsif($partida.thePlayerKilledTheMonster == true)
		erb :gameWin
	else 
		$partida.collectArrow
		$posPlayer = $partida.reportPosicionPlayer
		$arrowPlayer= $partida.reportNumberArrows 
		$messageMonsterAlert = $partida.reportMonsterIsNear
		$messageMissArrow=$partida.reportMissArrow
		$hasAccessToNorth = $partida.hasAccessToNorth
		$hasAccessToEast = $partida.hasAccessToEast
		$hasAccessToWest = $partida.hasAccessToWest
		$hasAccessToSouth = $partida.hasAccessToSouth
		$monsterAlert = $partida.isTheMonsterNear 
		erb :gameCaverns
	end

end


