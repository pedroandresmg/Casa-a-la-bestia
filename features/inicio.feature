Feature:    Como jugador
			Quiero iniciar el juego
			Para empezar a jugar
Scenario: 
		Given visito la pagina de inicio
		And presiono el link "1.- Jugar"
		And presiono el link "1.- Usar Mapa Predeterminado"
		Then  deberia mostrar "¡Bienvenido a Cazar al monstruo!, ¡Qué inicie el juego!"	

Scenario: 
		Given visito la pagina de juego
		When presiono el boton "Salir"
		Then visito la pagina de inicio	