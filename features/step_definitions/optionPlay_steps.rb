When("selecciono la jugada {string}") do |string|
  choose(string)
end

Given("visito la pagina de jugada") do
  visit '/optionPlay'
end