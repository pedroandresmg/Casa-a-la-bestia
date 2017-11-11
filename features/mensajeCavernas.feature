Feature:	Como jugador 
			Quiero recibir mensaje en el que me notifiquen las cavernas que me puedo mover
			Para saber a que cavernas puedo moverme en mi siguiente turno y analizar mi jugada



Scenario: 
		Given visito la pagina de inicio
		And presiono el link "1.- Jugar"
		And presiono el link "1.- Usar el Mapa Predeterminado"
		And deberia mostrar "¡Bienvenido a Cazar al monstruo!, ¡Qué inicie el juego!"	
		And deberia mostrar "Usando el Mapa predeterminado."
		And deberia mostrar "Estas en la caverna 20"
		Then deberia mostrar "Elige una jugada: moverse 'M', lanzar flecha 'F' o usar sprite 'S' y presione Enter."
