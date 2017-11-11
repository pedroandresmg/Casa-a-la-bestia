require './lib/map'

describe Map do

	before(:each) do
		@game = Map.new()
	end

	it "shoud show que estas en la caverna 20 " do
		expect(@game.reportPosicionPlayer()).to eq(20)
	end

	it "shoud show que tienes aceso al Sur y Este " do
		expect(@game.reportPosicionesAMoverse()).to eq('Sur (S) Este (E) ')
	end

	it "shoud show que tienes aceso al Sur y Este " do
		@game.getPlayer.setPos_x = 4
		@game.getPlayer.setPos_y = 3
		expect(@game.reportPosicionesAMoverse()).to eq('Norte (N) Sur (S) Este (E) Oeste (O) ')
	end



end
