require './lib/player'
require './lib/monster'


describe Player do

	before(:each) do
		@player = Player.new(4,3)
	end

	it "shoud move to the north" do
		@player.moveToNorth
		expect(@player.getPos_x()).to eq(3)
	end

	it "shoud move to the east" do
		@player.moveToEast
		expect(@player.getPos_y()).to eq(4)
	end

	it "shoud move to the west" do
		@player.moveToWest
		expect(@player.getPos_y()).to eq(2)
	end

	it "shoud move to the south" do
		@player.moveToSouth
		expect(@player.getPos_x()).to eq(5)
	end
	
	it "should have arrows" do
		expect(@player.validateShootArrow()).to eq(true)
	end

	
end
