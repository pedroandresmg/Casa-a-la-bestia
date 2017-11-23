Feature:    Como jugador
            Quiero salir del juego
            Para dejar de jugar

Scenario: 
		Given visito la pagina de inicio
		And presiono el link "Jugar"
		And presiono el boton "MapaPredeterminado"
		When presiono el boton "salir"
		Then deberia mostrar "Caza al Monstruo!"
		And deberia mostrar "-------------Menu Principal-------------"		
		And deberia mostrar "Jugar"	
			
Scenario: 
		Given visito la pagina de inicio
		And presiono el link "Jugar"
		When presiono el boton "atras"
		Then deberia mostrar "Caza al Monstruo!"
		And deberia mostrar "-------------Menu Principal-------------"		
		And deberia mostrar "Jugar"

