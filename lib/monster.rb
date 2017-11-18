class Monster


	def initialize(pos_x, pos_y)
		@itsAlive = true
		@pos_x = pos_x
		@pos_y = pos_y
	end

	def getItsAlive
		return @itsAlive
	end

	def getPos_x
		return @pos_x
	end

	def getPos_y
		return @pos_y
	end


	def setItsAlive=(w)
		@itsAlive=w
	end

	def setPos_x=(w)
		@pos_x=w
	end

	def setPos_y=(w)
		@pos_y=w
	end

	def moveToNorth
		@pos_x = @pos_x - 1
	end

	def moveToSouth
		@pos_x = @pos_x + 1
	end

	def moveToWest
		@pos_y = @pos_y - 1
	end

	def moveToEast
		@pos_y = @pos_y + 1
	end


end