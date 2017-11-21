When("selecciono la jugada {string}") do |string|
  choose(string)
end

When("Se seleccion {string}") do |string|
  choose(string)
end

Then("visito la pagina de jugada") do
  visit '/optionPlay'
end