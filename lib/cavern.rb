class Cavern


	def initialize(active, numberOfCavern, leftAccess, upAccess, rightAccess, downAccess, hasAPit)
		@itsActive = active
		@numberOfCavern = numberOfCavern
		@leftAccess = leftAccess
		@upAccess = upAccess
		@rightAccess = rightAccess
		@downAccess = downAccess
		@hasAPit = hasAPit
		@Arrows = [0,1].sample 
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


	def getHasAPit
		return @hasAPit
	end

	def getArrowsCavern
		return @Arrows
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


	def setHasAPit=(w)
		@hasAPit = w 
	end

	def setArrowsCavern=(w)
		@Arrows = w 
	end

	
end