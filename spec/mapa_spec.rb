require './lib/map'

describe Map do

	before(:each) do
		@player = Player.new(4,3)
		@game = Map.new()
		@game.setPlayer = @player
	end

	it "shoud show that you are on cavern 36 " do
		expect(@game.reportPosicionPlayer()).to eq(36)
	end


	it "shoud show that you have access to the north " do
		expect(@game.hasAccessToNorth()).to eq(true)
	end

	it "shoud show that you have access to the east " do
		expect(@game.hasAccessToEast()).to eq(true)
	end

	it "shoud show that you have access to the west " do
		expect(@game.hasAccessToWest()).to eq(true)
	end

	it "shoud show that you have access to the south " do
		expect(@game.hasAccessToSouth()).to eq(true)
	end

	it "shoud the player move to the north " do
		@game.moveToNorth
		expect(@game.getPlayer.getPos_x()).to eq(3)
	end

	it "shoud the player move to the east " do
		@game.moveToEast
		expect(@game.getPlayer.getPos_y()).to eq(4)
	end


	it "shoud the player move to the west " do
		@game.moveToWest
		expect(@game.getPlayer.getPos_y()).to eq(2)
	end


	it "shoud the player move to the south " do
		@game.moveToSouth
		expect(@game.getPlayer.getPos_x()).to eq(5)
	end
	
	

end
