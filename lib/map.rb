require './lib/cavern'
require './lib/caverns'
require './lib/player'

class Map


	def initialize(player)
		
		@caverns = Caverns.new()
		@player = player

	end

end