class Cavern


	def initialize(active, numberOfCavern, leftAccess, upAccess, rightAccess, downAccess)
		@itsActive = active
		@numberOfCavern = numberOfCavern
		@leftAccess = leftAccess
		@upAccess = upAccess
		@rightAccess = rightAccess
		@downAccess = downAccess
		@pitAlert = false
		@batAltert = false
		@monsterAlert = false
		@hasAPit = false
		@Arrows = [0,1].sample 
		@hasAnSpray = [true,false].sample
		@hasThemonster = false

	end 

	def getItsActive
		return @itsActive
	end

	def getNumberOfCavern
		return @numberOfCavern
	end

	def getLeftAccess
		return @leftAccess
	end

	def getRightAccess
		return @rightAccess
	end

	def getUpAccess
		return @upAccess
	end

	def getDownAccess
		return @downAccess
	end

	def getPitAlert
		return @pitAlert
	end

	def getBatAlert
		return @batAltert
	end

	def getMonsterAlert
		return @monsterAlert
	end

	def getHasAPit
		return @hasAPit
	end

	def getArrowsCavern
		return @Arrows
	end

	def getHasAnSpray
		return @hasAnSpray
	end


	def setItsActive=(w)
		@itsActive = w
	end

	def setNumberOfCavern=(w)
		@numberOfCavern = w
	end

	def setLeftAccess=(w)
		@leftAccess = w		
	end

	def setUpAccess=(w)
		@upAccess = w 
	end

	def setRightAccess=(w)
		@rightAccess = w 
	end

	def setDownAccess=(w)
		@downAccess = w 
	end

	def setPitAlert=(w)
		@pitAlert = w 
	end

	def setBatAlert=(w)
		@batAltert = w 
	end

	def setMonsterAlert=(w)
		@monsterAlert = w 
	end

	def setHasAPit=(w)
		@hasAPit = w 
	end

	def setArrowsCavern=(w)
		@Arrows = w 
	end

	def setHasAnSpray=(w)
		@hasAnSpray = w 
	end



	def getHasTheMonster
		return @hasThemonster
	end

	def setHasTheMonster=(w)
		@hasThemonster = w
	end



end