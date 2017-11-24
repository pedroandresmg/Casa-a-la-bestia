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
	$moverMonstruo="monsterDontMove" 
	$monsterDeathByArrow=true  
	$messageMonsterAlert = $partida.reportMonsterIsNear 
	$posPlayer = $partida.reportPosicionPlayer 
	$arrowPlayer = $partida.reportNumberArrows 
	$hasAccessToNorth = $partida.hasAccessToNorth
	$hasAccessToEast = $partida.hasAccessToEast
	$hasAccessToWest = $partida.hasAccessToWest
	$hasAccessToSouth = $partida.hasAccessToSouth
	$monsterAlert = $partida.isTheMonsterNear
	$messagePitAlert = $partida.reportAPitNear
	erb :gameCaverns  
end  
 

post '/optionPlay' do
	$jugada=params[:jugada]
	@puntoCardinal=params[:puntoCardinal]
	$moverMonstruo=params[:moverMonstruo]
	$monsterDeathByArrow=true  
	if ($moverMonstruo == 'monsterMove')
		$partida.monsterRandomMove
		$monsterAlert = $partida.isTheMonsterNear 
	end

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
		$messageWhyYouLost = "¡Has sido devorado por el Monstruo!"
		erb :gameOver
	elsif($partida.thePlayerKilledTheMonster == true)
		erb :gameWin
	elsif($partida.thePlayerFallInAPit == true)
		$messageWhyYouLost = "¡Wooooooops! ¡Te caíste en un pozo!"
		erb :gameOver
	else  
		$partida.collectArrow
		$posPlayer = $partida.reportPosicionPlayer
		$arrowPlayer= $partida.reportNumberArrows 
		$messageMonsterAlert = $partida.reportMonsterIsNear
		$messagePitAlert = $partida.reportAPitNear
		$messageMissArrow=$partida.reportMissArrow
		$hasAccessToNorth = $partida.hasAccessToNorth
		$hasAccessToEast = $partida.hasAccessToEast
		$hasAccessToWest = $partida.hasAccessToWest
		$hasAccessToSouth = $partida.hasAccessToSouth 
		erb :gameCaverns
	end

end


