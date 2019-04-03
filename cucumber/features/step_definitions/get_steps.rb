#TC_001
Given("that I make a GET in API") do
    @get_result = HTTParty.get 'https://pokeapi.co/api/v2/pokemon'
end
  
Then("the return of the request will be {int}") do |int|
     #Validate whether to get the API status value 200
     expect(@get_result.code).to eq 200
     puts @get_result.code
end

#TC_002
Given("I make a GET in a nonexistent API") do
    @result = HTTParty.get 'https://pokeapi.co/api/v2/digimon'
end
  
Then("the return of the request must be {int}") do |int|
    expect(@result.code).to eq 404
    puts @result.code
end

#TC_003
Given("that I have a list of pokémons") do
    @list_pokemon = HTTParty.get 'https://pokeapi.co/api/v2/pokemon'
end
  
When("I do the query in the API by {string}") do |string|
    puts string
    @list_pokemon = HTTParty.get("https://pokeapi.co/api/v2/pokemon/#{string}")
    puts @list_pokemon
end
  
Then("the response code will be {int}") do |int|
     #Validate whether to get the API status value 200
     puts int     
     expect(@list_pokemon.code).to eq int
     puts @list_pokemon.code
end
  
Then("The API returns the data of this pokémon") do
    puts "ID: #{@list_pokemon["id"]}"
    puts "NOME: #{@list_pokemon["name"]}"
end

#TC_004
When("I do the query in the API service by {string}") do |string|
    puts string
    @no_pokemon = HTTParty.get("https://pokeapi.co/api/v2/pokemon/#{string}")
    puts @no_pokemon
end

Then("the response code must be {int}") do |int|
    puts int     
    expect(@no_pokemon.code).to eq int
    puts @no_pokemon.code
end