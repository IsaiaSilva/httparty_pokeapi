describe 'make a request GET' do
    it 'GET' do
        # Using GET, without using the module (pokemon_service)
        #@opcao = HTTParty.get('https://pokeapi.co/api/v2/pokemon/')
        #puts @opcao

        @melhor_opcao = Pokemon.get('/pokemon/19') #rattata
        puts @melhor_opcao
    end
end