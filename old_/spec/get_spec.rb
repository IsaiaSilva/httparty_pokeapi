describe 'make a request GET' do
    it 'GET' do
        # Using GET, without using the module (pokemon_service)
       # @opcao = HTTParty.get('https://pokeapi.co/api/v2/pokemon/')
        @opcao = Pokemon.get('/1') #bulbasaur
        
        #Validate whether to get the API status value 200
        expect(@opcao.code).to eq 200
        puts @opcao.code
    end
end