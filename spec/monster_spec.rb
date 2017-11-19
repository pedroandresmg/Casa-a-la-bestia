require './lib/monster'

describe Monster do

	before(:each) do
		@monster = Monster.new(4,3)
	end

	it "shoud move to the north" do
		@monster.moveToNorth
		expect(@monster.getPos_x()).to eq(3)
	end

	it "shoud move to the east" do
		@monster.moveToEast
		expect(@monster.getPos_y()).to eq(4)
	end

	it "shoud move to the west" do
		@monster.moveToWest
		expect(@monster.getPos_y()).to eq(2)
	end

	it "shoud move to the south" do
		@monster.moveToSouth
		expect(@monster.getPos_x()).to eq(5)
	end
	


end
