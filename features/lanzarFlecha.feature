Feature:    Como jugador
            Quiero lanzar una flecha a la caverna contigua disponible
            Para intentar matar a la bestia

Scenario: 
        Given visito la pagina de juego
        When introdujo el valor "F" en el campo de "intruccion"
        Then deberia mostrar "La flecha falló, el número de flechas restantes es: 2"
