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

		@caverns = [[@cavern_0_0, @cavern_0_1, @cavern_0_2, @cavern_0_3,  @cavern_0_4, @cavern_0_5, @cavern_0_6, @cavern_0_7], [@cavern_1_0, @cavern_1_1, @cavern_1_2, @cavern_1_3,  @cavern_1_4, @cavern_1_5, @cavern_1_6, @cavern_1_7], [@cavern_2_0, @cavern_2_1, @cavern_2_2, @cavern_2_3,  @cavern_2_4, @cavern_2_5, @cavern_2_6, @cavern_2_7], [@cavern_3_0, @cavern_3_1, @cavern_3_2, @cavern_3_3,  @cavern_3_4, @cavern_3_5, @cavern_3_6, @cavern_3_7], [@cavern_4_0, @cavern_4_1, @cavern_4_2, @cavern_4_3,  @cavern_4_4, @cavern_4_5, @cavern_4_6, @cavern_4_7], [@cavern_5_0, @cavern_5_1, @cavern_5_2, @cavern_5_3,  @cavern_5_4, @cavern_5_5, @cavern_5_6, @cavern_5_7]]

	end

	
	def getCaverns
		return @caverns
	end

	def getPlayer
		return @player
	end

	def setCaverns=(w)
		@caverns = w 
	end

	def setPlayer=(w)
		@player = w 
	end


	def reportPosicionPlayer
		return @caverns[@player.getPos_x][@player.getPos_y].getNumberOfCavern
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

	def collectArrow 
		@player.setArrows =@player.getArrows.to_i  + @caverns[@player.getPos_x][@player.getPos_y].getArrowsCavern.to_i
		@caverns[@player.getPos_x][@player.getPos_y].setArrowsCavern = 0
	end

	def shootToNorth
		if(@player.validateShootArrow) 
			@player.setArrows= @player.getArrows.to_i - 1 
			@caverns[@player.getPos_x-1][@player.getPos_y].setArrowsCavern= (@caverns[@player.getPos_x-1][@player.getPos_y].getArrowsCavern.to_i+1) 
		end
	end

	def shootToSouth
		if(@player.validateShootArrow) 
			@player.setArrows= @player.getArrows.to_i - 1 
			@caverns[@player.getPos_x+1][@player.getPos_y].setArrowsCavern= (@caverns[@player.getPos_x+1][@player.getPos_y].getArrowsCavern.to_i+1)
		end
	end

	def shootToWest
		if(@player.validateShootArrow) 
			@player.setArrows= @player.getArrows.to_i - 1 
			@caverns[@player.getPos_x][@player.getPos_y-1].setArrowsCavern= (@caverns[@player.getPos_x][@player.getPos_y-1].getArrowsCavern.to_i+1)
		end
	end

	def shootToEast
		if(@player.validateShootArrow)
			@player.setArrows= @player.getArrows.to_i - 1 
			@caverns[@player.getPos_x][@player.getPos_y+1].setArrowsCavern= (@caverns[@player.getPos_x][@player.getPos_y+1].getArrowsCavern.to_i+1)
		end
	end 

	def MonsterhasAccessToNorth
		return @caverns[@monster.getPos_x][@monster.getPos_y].getUpAccess
	end

	def MonsterhasAccessToSouth
		return @caverns[@monster.getPos_x][@monster.getPos_y].getDownAccess
	end

	def MonsterhasAccessToEast
		return @caverns[@monster.getPos_x][@monster.getPos_y].getRightAccess
	end

	def MonsterhasAccessToWest
		return @caverns[@monster.getPos_x][@monster.getPos_y].getLeftAccess
	end

	def setAlertsToCavernsAboutMonster
		@caverns[@monster.getPos_x][@monster.getPos_y].setHasTheMonster = true
		if (self.MonsterhasAccessToNorth == true)
			@caverns[(@monster.getPos_x)-1][@monster.getPos_y].setMonsterAlert = true
		end

		if (self.MonsterhasAccessToSouth == true)
			@caverns[(@monster.getPos_x)+1][(@monster.getPos_y)].setMonsterAlert = true
		end

		if (self.MonsterhasAccessToEast == true)
			@caverns[(@monster.getPos_x)][(@monster.getPos_y)+1].setMonsterAlert = true
		end

		if (self.MonsterhasAccessToWest == true)
			@caverns[(@monster.getPos_x)][(@monster.getPos_y)-1].setMonsterAlert = true
		end
	end

	def isTheMonsterNear
		if (@caverns[(@player.getPos_x)][@player.getPos_y].getMonsterAlert == true)
			return true
		else
			return false
		end
	end

end