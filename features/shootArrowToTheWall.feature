Feature: 	Como jugador
			Quiero lanzar una flecha
			Para intentar matar al monstruo

Scenario: 
		Given visito la pagina de inicio
		And presiono el link "Jugar"
		And presiono el boton "MapaPredeterminado"
		When selecciono la jugada "jugadaFlecha"
		And presiono el boton "sur" 
		Then deberia mostrar "El lanzamiento de la flecha no impacto con el monstruo"
