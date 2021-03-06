require './lib/map'

describe Map do

	before(:each) do
		@player = Player.new(2,3)
		@game = Map.new()
		@monster = Monster.new(2,2)
		@game.setMonster = @monster
		@game.setPlayer = @player
	end

	it "should show that you are on cavern 20 " do
		expect(@game.reportPosicionPlayer()).to eq("Estas en la caverna 20")
	end

	it "should show that you are on cavern 29" do
		@game.moveToSouth
		@game.moveToEast
		expect(@game.reportPosicionPlayer()).to eq("Estas en la caverna 29")
	end


	it "should show that you have 3 arrows" do
		expect(@game.reportNumberArrows()).to eq("Numero de flechas 3")
	end

	it "should give a miss arrow messagge" do
		expect(@game.reportMissArrow()).to eq("El lanzamiento de la flecha no impacto con el monstruo")
	end

	it "should show that you dont have access to the north " do
		expect(@game.hasAccessToNorth()).to eq(false)
	end

	it "should show that you dont have access to the east " do
		expect(@game.hasAccessToEast()).to eq(false)
	end

	it "should show that you have access to the west " do
		expect(@game.hasAccessToWest()).to eq(true)
	end

	it "should show that you have access to the south " do
		expect(@game.hasAccessToSouth()).to eq(true)
	end

	it "should the player move to the west " do
		@game.movePlayerToWest
		expect(@game.getPlayer.getPos_y()).to eq(2)
	end

	it "should the player move to the south " do
		@game.movePlayerToSouth
		expect(@game.getPlayer.getPos_x()).to eq(3)
	end

	it "shouldn't the player move to the north " do
		@game.movePlayerToNorth
		expect(@game.getPlayer.getPos_x()).to eq(2)
	end

	it "shouldn't the player move to the east " do
		@game.movePlayerToEast
		expect(@game.getPlayer.getPos_y()).to eq(3)
	end

	it "player can not move to west" do
		@game.moveToWest
		@game.moveToWest
		expect(@game.hasAccessToWest).to eq(true)
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
		expect(@game.hasAccessToSouth).to eq(true)
	end

	it "should show player fail shoot arrow to South" do
		@game.shootToSouth
		expect(@game.reportMissArrow).to eq("El lanzamiento de la flecha no impacto con el monstruo")
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

	it "collect three arrows after shooting three times in the west and moving west three times" do
		@game.shootToWest
		@game.shootToWest
		@game.shootToWest
		@game.moveToWest
		@game.collectArrow
		@game.moveToWest
		@game.collectArrow
		@game.moveToWest
		@game.collectArrow
		expect(@game.getPlayer.getArrows()).to eq(3)
	end


	it "the player should smell the monster" do
		expect(@game.isTheMonsterNear()).to eq(true)
	end

	it "the player should smell the monster when this is on diagonal" do
		@monster1 = Monster.new(3,2)
		@game.setMonster = @monster1
		expect(@game.isTheMonsterNear()).to eq(true)
	end

	it "should show that you smell the monster" do
		expect(@game.reportMonsterIsNear()).to eq("¡Olor extraño!,¡El monstruo está cerca!") 
	end

	it "should show that you dont smell the monster" do
		@monster1 = Monster.new(5,0)
		@game.setMonster = @monster1
		expect(@game.reportMonsterIsNear()).to eq(" ") 
	end



	it "the monster should have access to the north " do
		expect(@game.monsterHasAccessToNorth()).to eq(true)
	end

	it "the monster should have access to the east " do
		expect(@game.monsterHasAccessToEast()).to eq(true)
	end

	it "the monster should have access to the west " do
		expect(@game.monsterHasAccessToWest()).to eq(true)
	end

	it "the monster should not have access to the south " do
		expect(@game.monsterHasAccessToSouth()).to eq(false)
	end


	it "the monster should move to the north " do
		@game.moveTheMonsterToNorth
		expect(@game.getMonster.getPos_x()).to eq(1)
	end

	it "the monster should move to the east " do
		@game.moveTheMonsterToEast
		expect(@game.getMonster.getPos_y()).to eq(3)
	end

	it "the monster should move to the west " do
		@game.moveTheMonsterToWest
		expect(@game.getMonster.getPos_y()).to eq(1)
	end

	it "the monster should move to the south " do
		@game.moveTheMonsterToEast
		@game.moveTheMonsterToSouth
		expect(@game.getMonster.getPos_x()).to eq(3)
	end

	it "the monster should have access to the north" do
		expect(@game.monsterHasAccessToNorth()).to eq(true)
 	end
	
	it "the monster should have access to the east" do
		expect(@game.monsterHasAccessToEast()).to eq(true)
 	end

 	it "the monster should have access to the west" do
		expect(@game.monsterHasAccessToWest()).to eq(true)
 	end

 	it "the monster should have access to the south" do
		expect(@game.monsterHasAccessToSouth()).to eq(false)
 	end

 	it "the player shouldnt kill the monster" do
 		expect(@game.thePlayerKilledTheMonster()).to eq(false)
 	end

	it "the player should kill the monster shooting to the west" do
		@game.shootToWest
		expect(@game.thePlayerKilledTheMonster()).to eq(true)
	end

	it "the player should kill the monster shooting to the east" do
		@monster = Monster.new(3,5)
		@game.setMonster = @monster
		@game.moveToSouth
		@game.shootToEast
		expect(@game.thePlayerKilledTheMonster()).to eq(true)
	end

	it "the player should kill the monster shooting to the north" do
		@monster = Monster.new(0,5)
		@game.setMonster = @monster
		@game.moveToSouth
		@game.moveToEast
		@game.moveToEast
		@game.shootToNorth
		expect(@game.thePlayerKilledTheMonster()).to eq(true)
	end

	it "the player should kill the monster shooting to the south" do
		@monster = Monster.new(5,3)
		@game.setMonster = @monster
		@game.shootToSouth
		expect(@game.thePlayerKilledTheMonster()).to eq(true)
	end



	it "the monster should kill the player" do 
		@game.moveToWest
		expect(@game.theMonsterKilledThePlayer()).to eq(true)
	end

	it "the monster shouldnt kill the player" do 
		expect(@game.theMonsterKilledThePlayer()).to eq(false)
	end


	it "the player shouldnt fall in a pit" do
		expect(@game.thePlayerFallInAPit()).to eq(false)
	end

	it "the player should fall in a pit" do
		@game.moveToSouth
		@game.moveToEast
		@game.moveToEast
		@game.moveToNorth
		@game.moveToEast
		@game.moveToSouth
		@game.moveToEast
		expect(@game.thePlayerFallInAPit()).to eq(true)
	end

	it "the player shouldnt fell wind" do
		expect(@game.isAPitNear()).to eq(false)
	end

	it "the player should fell wind to the north" do
		@game.moveToSouth
		@game.moveToEast
		@game.moveToEast
		@game.moveToNorth
		@game.moveToEast
		@game.moveToSouth
		@game.moveToSouth
		@game.moveToEast
		expect(@game.isAPitNear()).to eq(true)
	end

	it "the player should fell wind to the south" do
		@game.moveToSouth
		@game.moveToEast
		@game.moveToEast
		@game.moveToNorth
		@game.moveToEast
		@game.moveToEast
		expect(@game.isAPitNear()).to eq(true)
	end

	it "the player should fell wind to the east" do
		@game.moveToSouth
		@game.moveToEast
		@game.moveToEast
		@game.moveToNorth
		@game.moveToEast
		@game.moveToSouth
		expect(@game.isAPitNear()).to eq(true)
	end

	it "the player should fell wind to the west" do
		@game.moveToWest
		@game.moveToWest
		expect(@game.isAPitNear()).to eq(true)
	end


	it "should show that you fell the wind" do
		@game.moveToSouth
		@game.moveToEast
		@game.moveToEast
		@game.moveToNorth
		@game.moveToEast
		@game.moveToSouth
		expect(@game.reportAPitNear()).to eq("¡Fuerte viento!,¡Un pozo está cerca!") 
	end

	it "should show that you dont fell the wind" do
		expect(@game.reportAPitNear()).to eq(" ") 
	end
end
