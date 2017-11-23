Feature:    Como jugador
            Quiero salir del juego
            Para dejar de jugar

Scenario: 
		Given visito la pagina de inicio
		And presiono el link "Jugar"
		And presiono el boton "MapaPredeterminado"
		And presiono el boton "salir"
		Then deberia mostrar "Caza al Monstruo!"  			
			
Scenario: 
		Given visito la pagina de inicio
		And presiono el link "Jugar"
		And presiono el boton "atras"
		Then deberia mostrar "Caza al Monstruo!"

