class Player


	def initialize(pos_x, pos_y)
		@pos_x = pos_x
		@pos_y = pos_y
		@arrows = 3
	end

	

	def getPos_x
		return @pos_x
	end

	def getPos_y
		return @pos_y
	end

	def getArrows
		return @arrows
	end



	def setPos_x=(w)
		@pos_x=w
	end

	def setPos_y=(w)
		@pos_y=w
	end

	def setArrows=(w)
		@arrows=w
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

	def validateShootArrow
		return @arrows>0
	end
end