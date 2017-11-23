require './lib/cavern'
require './lib/player'
require './lib/monster'

class Map


	def initialize()
		
		@player = Player.new(2,3)
		@monster = Monster.new(5,0)

		@cavern_0_0=Cavern.new(false,1,false,false,false,false)
		@cavern_0_1=Cavern.new(true,2,false,false,false,true)  
		@cavern_0_2=Cavern.new(true,3,false,false,false,true)	
		@cavern_0_3=Cavern.new(false,4,false,false,false,false)
		@cavern_0_4=Cavern.new(false,5,false,false,false,false)
		@cavern_0_5=Cavern.new(true,6,false,false,true,true)
		@cavern_0_6=Cavern.new(true,7,true,false,false,true)	
		@cavern_0_7=Cavern.new(true,8,false,false,false,true)	

		@cavern_1_0=Cavern.new(false,9,false,false,false,false)		
		@cavern_1_1=Cavern.new(true,10,false,true,true,true)
		@cavern_1_2=Cavern.new(true,11,true,true,false,true)	
		@cavern_1_3=Cavern.new(false,12,false,false,false,false)
		@cavern_1_4=Cavern.new(false,13,false,false,false,false)
		@cavern_1_5=Cavern.new(true,14,false,true,true,true)	
		@cavern_1_6=Cavern.new(true,15,true,true,false,true)	
		@cavern_1_7=Cavern.new(true,16,false,true,false,true)	

		@cavern_2_0=Cavern.new(true,17,false,false,true,false) 	
		@cavern_2_1=Cavern.new(true,18,true,true,true,false) 
		@cavern_2_2=Cavern.new(true,19,true,true,true,false)	
		@cavern_2_3=Cavern.new(true,20,true,false,false,true) 
		@cavern_2_4=Cavern.new(false,21,false,false,false,false)
		@cavern_2_5=Cavern.new(true,22,false,true,true,true)	
		@cavern_2_6=Cavern.new(true,23,true,true,true,true)
		@cavern_2_7=Cavern.new(true,24,true,true,false,true)	

		@cavern_3_0=Cavern.new(true,25,false,false,true,true)	
		@cavern_3_1=Cavern.new(true,26,true,false,true,true)	
		@cavern_3_2=Cavern.new(true,27,true,false,true,true)	
		@cavern_3_3=Cavern.new(true,28,true,true,true,true)	
		@cavern_3_4=Cavern.new(true,29,true,false,true,true)		
		@cavern_3_5=Cavern.new(true,30,true,true,false,false)		
		@cavern_3_6=Cavern.new(true,31,false,true,true,true)	
		@cavern_3_7=Cavern.new(true,32,true,true,false,true)	

		@cavern_4_0=Cavern.new(true,33,false,true,false,true)	
		@cavern_4_1=Cavern.new(true,34,false,true,true,false)	
		@cavern_4_2=Cavern.new(true,35,true,true,true,true)
		@cavern_4_3=Cavern.new(true,36,true,true,true,true)
		@cavern_4_4=Cavern.new(true,37,true,true,false,false)	
		@cavern_4_5=Cavern.new(true,38,false,false,true,true)	
		@cavern_4_6=Cavern.new(true,39,true,true,true,false)	
		@cavern_4_7=Cavern.new(true,40,true,true,false,false) 
		
		@cavern_5_0=Cavern.new(true,41,false,true,true,false)
		@cavern_5_1=Cavern.new(true,42,true,false,true,false)
		@cavern_5_2=Cavern.new(true,43,true,true,true,false)
		@cavern_5_3=Cavern.new(true,44,true,true,true,false)
		@cavern_5_4=Cavern.new(true,45,true,false,true,false)
		@cavern_5_5=Cavern.new(true,46,true,true,false,false)
		@cavern_5_6=Cavern.new(false,47,false,false,false,false)
		@cavern_5_7=Cavern.new(false,48,false,false,false,false)
		
		@cavern_2_0.setArrowsCavern=0
		@cavern_2_1.setArrowsCavern=0
		@cavern_2_2.setArrowsCavern=0
		@cavern_2_3.setArrowsCavern=0
		@caverns = [
			[@cavern_0_0, @cavern_0_1, @cavern_0_2, @cavern_0_3,  @cavern_0_4, @cavern_0_5, @cavern_0_6, @cavern_0_7], 
			[@cavern_1_0, @cavern_1_1, @cavern_1_2, @cavern_1_3,  @cavern_1_4, @cavern_1_5, @cavern_1_6, @cavern_1_7], 
			[@cavern_2_0, @cavern_2_1, @cavern_2_2, @cavern_2_3,  @cavern_2_4, @cavern_2_5, @cavern_2_6, @cavern_2_7], 
			[@cavern_3_0, @cavern_3_1, @cavern_3_2, @cavern_3_3,  @cavern_3_4, @cavern_3_5, @cavern_3_6, @cavern_3_7], 
			[@cavern_4_0, @cavern_4_1, @cavern_4_2, @cavern_4_3,  @cavern_4_4, @cavern_4_5, @cavern_4_6, @cavern_4_7], 
			[@cavern_5_0, @cavern_5_1, @cavern_5_2, @cavern_5_3,  @cavern_5_4, @cavern_5_5, @cavern_5_6, @cavern_5_7]]
		
	end

	
	def getCaverns
		return @caverns
	end

	def getPlayer
		return @player
	end

	def getMonster
		return @monster
	end

	def setCaverns=(w)
		@caverns = w 
	end

	def setPlayer=(w)
		@player = w 
	end

	def setMonster=(w)
		@monster = w
	end


	def reportPosicionPlayer
		return "Estas en la caverna "+@caverns[@player.getPos_x][@player.getPos_y].getNumberOfCavern.to_s
	end

	def reportNumberArrows
		return "Numero de flechas "+@player.getArrows.to_s
	end

	def reportMonsterIsNear
		if(self.isTheMonsterNear==true) 
			return "¡Olor extraño!,¡El monstruo está cerca!"  
		else
			return " "
		end 
	end

	def reportMissArrow
			return "El lanzamiento de la flecha no impacto con el monstruo"
	end
		 
	def hasAccessToNorth
		return @caverns[@player.getPos_x][@player.getPos_y].getUpAccess
	end

	def hasAccessToSouth
		return @caverns[@player.getPos_x][@player.getPos_y].getDownAccess
	end

	def hasAccessToEast
		return @caverns[@player.getPos_x][@player.getPos_y].getRightAccess
	end

	def hasAccessToWest
		return @caverns[@player.getPos_x][@player.getPos_y].getLeftAccess
	end

	def moveToNorth
		@player.moveToNorth
	end

	def moveToSouth
		@player.moveToSouth
	end

	def moveToWest
		@player.moveToWest
	end

	def moveToEast
		@player.moveToEast
	end

	def movePlayerToNorth
		if(self.hasAccessToNorth==true)
			self.moveToNorth	
		end
	end

	def movePlayerToSouth
		if(self.hasAccessToSouth==true)
			self.moveToSouth
		end	
	end

	def movePlayerToWest
		if(self.hasAccessToWest==true)
			self.moveToWest
		end	
	end

	def movePlayerToEast
		if(self.hasAccessToEast==true)
			self.moveToEast
		end	
	end

	def collectArrow 
		@player.setArrows =@player.getArrows.to_i  + @caverns[@player.getPos_x][@player.getPos_y].getArrowsCavern.to_i
		@caverns[@player.getPos_x][@player.getPos_y].setArrowsCavern = 0
	end

	def shootToNorth
		if(@player.validateShootArrow)
			posX = @player.getPos_x
			posY = @player.getPos_y
			@player.setArrows= @player.getArrows.to_i - 1
			while (@caverns[posX][posY].getUpAccess) do
				posX-=1
				if((@monster.getPos_x==posX) && (@monster.getPos_y==posY))
					@monster.setItsAlive=false
				end
			end
			@caverns[posX][posY].setArrowsCavern= (@caverns[posX][posY].getArrowsCavern.to_i+1) 
		end
	end

	def shootToSouth
		if(@player.validateShootArrow)
			posX = @player.getPos_x
			posY = @player.getPos_y
			@player.setArrows= @player.getArrows.to_i - 1
			while (@caverns[posX][posY].getDownAccess) do
				posX+=1
				if((@monster.getPos_x==posX) && (@monster.getPos_y==posY))
					@monster.setItsAlive=false
				end
			end
			@caverns[posX][posY].setArrowsCavern= (@caverns[posX][posY].getArrowsCavern.to_i+1) 
		end
	end

	def shootToWest
		if(@player.validateShootArrow)
			posX = @player.getPos_x
			posY = @player.getPos_y
			@player.setArrows= @player.getArrows.to_i - 1
			while (@caverns[posX][posY].getLeftAccess) do
				posY-=1
				if((@monster.getPos_x==posX) && (@monster.getPos_y==posY))
					@monster.setItsAlive=false
				end
			end
			@caverns[posX][posY].setArrowsCavern= (@caverns[posX][posY].getArrowsCavern.to_i+1) 
		end
	end

	def shootToEast
		if(@player.validateShootArrow)
			posX = @player.getPos_x
			posY = @player.getPos_y
			@player.setArrows= @player.getArrows.to_i - 1
			while (@caverns[posX][posY].getRightAccess) do
				posY+=1
				if((@monster.getPos_x==posX) && (@monster.getPos_y==posY))
					@monster.setItsAlive=false
				end
			end
			@caverns[posX][posY].setArrowsCavern= (@caverns[posX][posY].getArrowsCavern.to_i+1) 
		end
	end 

	def monsterHasAccessToNorth
		return @caverns[@monster.getPos_x][@monster.getPos_y].getUpAccess
	end

	def monsterHasAccessToSouth
		return @caverns[@monster.getPos_x][@monster.getPos_y].getDownAccess
	end

	def monsterHasAccessToEast
		return @caverns[@monster.getPos_x][@monster.getPos_y].getRightAccess
	end

	def monsterHasAccessToWest
		return @caverns[@monster.getPos_x][@monster.getPos_y].getLeftAccess
	end

	def isTheMonsterNearAtCorner
		@posX=0
		@posY=0
		if(@player.getPos_x>@monster.getPos_x)
			@posX=@player.getPos_x-@monster.getPos_x
		elsif(@player.getPos_x<@monster.getPos_x)
			@posX=@monster.getPos_x-@player.getPos_x
		end
		if(@player.getPos_y>@monster.getPos_y)
			@posY=@player.getPos_y-@monster.getPos_y
		elsif(@player.getPos_y<@monster.getPos_y)
			@posY=@monster.getPos_y-@player.getPos_y
		end
		if(@posX==1 && @posY==1)
			return true
		end
		return false
	end

	def isTheMonsterNear 
			if (@player.getPos_x == @monster.getPos_x + 1 && @player.getPos_y == @monster.getPos_y)
				return true
			end 
			if (@player.getPos_y == @monster.getPos_y + 1 && @player.getPos_x == @monster.getPos_x)
				return true
			end 
			if (@player.getPos_y == @monster.getPos_y - 1 && @player.getPos_x == @monster.getPos_x)
				return true
			end 
			if (@player.getPos_x == @monster.getPos_x - 1 && @player.getPos_y == @monster.getPos_y)
				return true
			end

			if (@player.getPos_x == @monster.getPos_x + 2 && @player.getPos_y == @monster.getPos_y)
				return true
			end 
			if (@player.getPos_y == @monster.getPos_y + 2 && @player.getPos_x == @monster.getPos_x)
				return true
			end 
			if (@player.getPos_y == @monster.getPos_y - 2 && @player.getPos_x == @monster.getPos_x)
				return true
			end 
			if (@player.getPos_x == @monster.getPos_x - 2 && @player.getPos_y == @monster.getPos_y)
				return true
			end
			if(self.isTheMonsterNearAtCorner)
				return true
			end

		return false
	end


	def moveTheMonsterToNorth
		@monster.moveToNorth
	end

	def moveTheMonsterToSouth
		@monster.moveToSouth
	end

	def moveTheMonsterToWest
		@monster.moveToWest
	end

	def moveTheMonsterToEast
		@monster.moveToEast
	end  

	def monsterRandomMove
		@random = rand(0..4)

		if (@random == 1)
			if (self.monsterHasAccessToNorth == true)
				self.moveTheMonsterToNorth
			elsif (self.monsterHasAccessToSouth == true)
				self.moveTheMonsterToSouth
			elsif (self.monsterHasAccessToEast == true)
				self.moveTheMonsterToEast
			else 
				self.moveTheMonsterToWest	
			end
		end

		if (@random == 2)
			if (self.monsterHasAccessToSouth == true)
				self.moveTheMonsterToSouth
			elsif (self.monsterHasAccessToEast == true)
				self.moveTheMonsterToEast
			elsif (self.monsterHasAccessToWest == true)
				self.moveTheMonsterToWest
			else 
				self.moveTheMonsterToNorth	
			end
		end

		if (@random == 3)
			if (self.monsterHasAccessToEast == true)
				self.moveTheMonsterToEast
			elsif (self.monsterHasAccessToWest == true)
				self.moveTheMonsterToWest
			elsif (self.monsterHasAccessToNorth == true)
				self.moveTheMonsterToNorth
			else 
				self.moveTheMonsterToSouth	
			end
		end

		if (@random == 4)
			if (self.monsterHasAccessToWest == true)
				self.moveTheMonsterToWest
			elsif (self.monsterHasAccessToNorth == true)
				self.moveTheMonsterToNorth
			elsif (self.monsterHasAccessToSouth == true)
				self.moveTheMonsterToSouth
			else 
				self.moveTheMonsterToEast	
			end
		end

	end

	def theMonsterKilledThePlayer
		if (@monster.getPos_x == @player.getPos_x && @monster.getPos_y == @player.getPos_y)
			return true
		else
			return false
		end
		
	end

	def thePlayerKilledTheMonster
		if(@monster.getItsAlive==false)
			return true
		else
			return false
		end
	end



end