class Player


	def initialize(pos_x, pos_y)
		@itsAlive = true
		@pos_x = pos_x
		@pos_y = pos_y
		@arrows = 3
		@spray = 0
		@smellBeast = false
		@listenToBats = false
		@feelWind = false
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

	def getArrows
		return @arrows
	end

	def getSpray
		return @spray
	end

	def getSmellBeast
		return @smellBeast
	end

	def getListenToBats
		return @listenToBats
	end

	def getFeelWind
		return @feelWind
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

	def setArrows=(w)
		@arrows=w
	end

	def setSpray=(w)
		@spray=w
	end

	def setSmellBeast=(w)
		@smellBeast=w
	end

	def setListenToBats=(w)
		@listenToBats=w
	end

	def setFeelWind=(w)
		@feelWind=w
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