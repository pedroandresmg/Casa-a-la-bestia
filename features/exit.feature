Feature:    Como jugador
            Quiero salir del juego
            Para dejar de jugar

Scenario: 
		Given visito la pagina de inicio
		And presiono el link "1.- Jugar"
		And presiono el boton "MapaPredeterminado"
		When presiono el boton "salir"
		Then visito la pagina de inicio				
			
Scenario: 
		Given visito la pagina de inicio
		And presiono el link "1.- Jugar"
		And presiono el boton "atras"
		Then visito la pagina de inicio	

