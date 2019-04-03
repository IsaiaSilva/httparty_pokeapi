Given("that I make a GET in API") do
    @get_result = HTTParty.get 'https://pokeapi.co/api/v2/pokemon'
end
  
Then("the return of the request will be {int}") do |int|
     #Validate whether to get the API status value 200
     expect(@get_result.code).to eq 200
     puts @get_result.code
end