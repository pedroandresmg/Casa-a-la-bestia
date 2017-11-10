require 'matrix'
require './lib/cavern'


class Caverns
#@cavern_y_x=cavern.new(activa,izquierda,arriba,derecha,abajo---hay pared)
			
	def initialize
		@cavern_0_0=Cavern.new(false)
		@cavern_0_1=Cavern.new(true,false,false,false,true)  
		@cavern_0_2=Cavern.new(true,false,false,false,true)	
		@cavern_0_3=Cavern.new(false)
		@cavern_0_4=Cavern.new(false)
		@cavern_0_5=Cavern.new(true,false,false,true,true)
		@cavern_0_6=Cavern.new(true,true,false,false,true)	
		@cavern_0_7=Cavern.new(true,false,false,false,true)	

		@cavern_1_0=Cavern.new(false)		
		@cavern_1_1=Cavern.new(true,false,true,true,true)
		@cavern_1_2=Cavern.new(true,true,true,false,true)	
		@cavern_1_3=Cavern.new(false)
		@cavern_1_4=Cavern.new(false)
		@cavern_1_5=Cavern.new(true,false,true,true,true)	
		@cavern_1_6=Cavern.new(true,true,true,false,true)	
		@cavern_1_7=Cavern.new(true,false,true,false,true)	

		@cavern_2_0=Cavern.new(true,false,false,true,false)	
		@cavern_2_1=Cavern.new(true,true,true,true,false)	
		@cavern_2_2=Cavern.new(true,true,true,true,false)	
		@cavern_2_3=Cavern.new(true,true,false,false,true)	
		@cavern_2_4=Cavern.new(false)
		@cavern_2_5=Cavern.new(true,false,true,true,true)	
		@cavern_2_6=Cavern.new(true,true,true,true,true)
		@cavern_2_7=Cavern.new(true,true,true,false,true)	

		@cavern_3_0=Cavern.new(true,false,false,true,true)	
		@cavern_3_1=Cavern.new(true,true,false,true,true)	
		@cavern_3_2=Cavern.new(true,true,false,true,true)	
		@cavern_3_3=Cavern.new(true,true,true,true,true)	
		@cavern_3_4=Cavern.new(true,true,false,true,true)		
		@cavern_3_5=Cavern.new(true,true,true,false,false)		
		@cavern_3_6=Cavern.new(true,false,true,true,true)	
		@cavern_3_7=Cavern.new(true,true,true,false,true)	

		@cavern_4_0=Cavern.new(true,false,true,false,true)	
		@cavern_4_1=Cavern.new(true,false,true,true,false)	
		@cavern_4_2=Cavern.new(true,true,true,true,true)
		@cavern_4_3=Cavern.new(true,true,true,true,true)
		@cavern_4_4=Cavern.new(true,true,true,false,false)	
		@cavern_4_5=Cavern.new(true,false,false,true,true)	
		@cavern_4_6=Cavern.new(true,true,true,true,false)	
		@cavern_4_7=Cavern.new(true,true,true,false,false)
		@cavern_5_7=Cavern.new(false)

		@caverns = Matrix[
		[@cavern_0_0, @cavern_0_1, @cavern_0_2, @cavern_0_3,  @cavern_0_4, @cavern_0_5, @cavern_0_6, @cavern_0_7], 
		[@cavern_1_0, @cavern_1_1, @cavern_1_2, @cavern_1_3,  @cavern_1_4, @cavern_1_5, @cavern_1_6, @cavern_1_7], 
		[@cavern_2_0, @cavern_2_1, @cavern_2_2, @cavern_2_3,  @cavern_2_4, @cavern_2_5, @cavern_2_6, @cavern_2_7], 
		[@cavern_3_0, @cavern_3_1, @cavern_3_2, @cavern_3_3,  @cavern_3_4, @cavern_3_5, @cavern_3_6, @cavern_3_7], 
		[@cavern_4_0, @cavern_4_1, @cavern_4_2, @cavern_4_3,  @cavern_4_4, @cavern_4_5, @cavern_4_6, @cavern_4_7], 
		[@cavern_5_0, @cavern_5_1, @cavern_5_2, @cavern_5_3,  @cavern_5_4, @cavern_5_5, @cavern_5_6, @cavern_5_7]]
	end
end