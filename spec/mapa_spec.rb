require './lib/map'

describe Map do

	before(:each) do
		@player = Player.new(4,3)
		@game = Map.new()
		@game.setPlayer = @player
	end

	it "should show that you are on cavern 36 " do
		expect(@game.reportPosicionPlayer()).to eq(36)
	end


	it "should show that you have access to the north " do
		expect(@game.hasAccessToNorth()).to eq(true)
	end

	it "should show that you have access to the east " do
		expect(@game.hasAccessToEast()).to eq(true)
	end

	it "should show that you have access to the west " do
		expect(@game.hasAccessToWest()).to eq(true)
	end

	it "should show that you have access to the south " do
		expect(@game.hasAccessToSouth()).to eq(true)
	end

	it "should the player move to the north " do
		@game.moveToNorth
		expect(@game.getPlayer.getPos_x()).to eq(3)
	end

	it "should the player move to the east " do
		@game.moveToEast
		expect(@game.getPlayer.getPos_y()).to eq(4)
	end


	it "should the player move to the west " do
		@game.moveToWest
		expect(@game.getPlayer.getPos_y()).to eq(2)
	end


	it "should the player move to the south " do
		@game.moveToSouth
		expect(@game.getPlayer.getPos_x()).to eq(5)
	end

	it "player can not move to west" do
		@game.moveToWest
		@game.moveToWest
		expect(@game.hasAccessToWest).to eq(false)
	end

	it "player can not move to south after two moves to the west" do
		@game.moveToWest
		@game.moveToWest
		expect(@game.hasAccessToSouth).to eq(false)
	end

	it "player can not move to north after two moves north" do
		@game.moveToNorth
		@game.moveToNorth
		expect(@game.hasAccessToNorth).to eq(false)
	end

	it "player can not move to east after two moves to the north" do
		@game.moveToNorth
		@game.moveToNorth
		expect(@game.hasAccessToEast).to eq(false)
	end

	it "player can not move to east after one move to the east" do
		@game.moveToEast
		expect(@game.hasAccessToEast).to eq(false)
	end

	it "player can not move to south after one move to the east" do
		@game.moveToEast
		expect(@game.hasAccessToSouth).to eq(false)
	end

	it "player can not move to south after one move to the south" do
		@game.moveToSouth
		expect(@game.hasAccessToSouth).to eq(false)
	end
	
	it "player must have two arrows after shooting south" do
		@game.shootToSouth
		expect(@game.getPlayer.getArrows()).to eq(2)
	end

	it "player must have one arrows after shooting south and west" do
		@game.shootToSouth
		@game.shootToWest
		expect(@game.getPlayer.getArrows()).to eq(1)
	end

	it "player must have zero arrows after shooting south and west and south" do
		@game.shootToSouth
		@game.shootToWest
		@game.shootToSouth
		expect(@game.getPlayer.getArrows()).to eq(0)
	end

	it "collect three arrows after shooting three times in the west and moving west" do
		@game.shootToWest
		@game.shootToWest
		@game.shootToWest
		@game.moveToWest
		@game.collectArrow
		expect(@game.getPlayer.getArrows()).to eq(3)
	end

end
