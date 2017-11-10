require './lib/cavern'
require './lib/caverns'
require './lib/player'

class Map


	def initialize(player)
		
		@caverns = Caverns.new()
		@player = player

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


end