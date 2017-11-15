Feature:    Como jugador
            Quiero salir del juego
            Para dejar de jugar
			
Scenario: 
		Given visito la pagina de inicio
		And presiono el link "1.- Jugar"
		And presiono el link "1.- Usar el Mapa Predeterminado"
		When presiono el boton "Salir"
		Then visito la pagina de inicio	

