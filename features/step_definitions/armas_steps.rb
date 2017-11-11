When("introdujo el valor {string} en el campo de {string}") do |valor, campo|
    fill_in(campo, :with => valor)
end

Then("deberia mostrar ?La flecha falló, el número de flechas restantes es: {int}?") do |int|
    last_response.body.should =~ /#{int}/m
end