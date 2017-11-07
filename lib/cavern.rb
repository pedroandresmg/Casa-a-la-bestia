class Cavern


	def initialize(active, westWall, northWall, eastWall, southWall)
		@itsActive = active
		@westWall = westWall
		@northWall = northWall
		@eastWall = eastWall
		@southWall = southWall
		@pitAlert = false
		@batAltert = false
		@beastAlert = false
		@hasAPit = false
		@hasAnArrow = false
		@hasAnSpray = false

	end

	def initialize(active)
		@itsActive = active
		@westWall = true
		@northWall = true
		@eastWall = true
		@southWall = true
		@pitAlert = false
		@batAltert = false
		@beastAlert = false
		@hasAPit = false
		@hasAnArrow = false
		@hasAnSpray = false

	end
end