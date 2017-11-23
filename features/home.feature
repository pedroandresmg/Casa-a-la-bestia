Feature:    Como jugador
			Quiero iniciar el juego
			Para empezar a jugar
Scenario: 
		Given visito la pagina de inicio
		And presiono el link "Jugar"
		And presiono el boton "MapaPredeterminado"
		Then  deberia mostrar "Caza al monstruo"
		And deberia mostrar "Estas en la caverna 20"
		And deberia mostrar "Numero de flechas 3"	





