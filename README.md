TESTANDO A API DO POKEAPI.CO

[objetivo]
Conforme a descrição em: https://pokeapi.co/docs/v2.html/
_utilizar o verbo GET.
_ambiente: https://pokeapi.co/
_exercício para testar uma API (https://pokeapi.co/) apenas com o verbo GET.

[frameworks]
_cucumber
_HTTParty
_rspec

[specifications]
_get.feature: Api apenas para testar o verbo GET

[specs]
_get.feature: Funcionalidade apenas para usar o verbo get.

OBS:
_api disponibiliza apenas o uso do verbo GET, impedindo assim que outros verbos sejam testados.

[steps]
_get.steps: Testes validados atráves do .rspec

OBS:

_para rodar os teste => Clonar o projeto e dar um bundle install na raíz.
_através do terminal utilizar o comando: cucumber

[macro_steps]
_001 - Instalar as gems necessárias (GemFile) -> bundle install
     - Adicionando requires no spec_helper.rb

Results API
200 – Sucess
201 – Criado com sucesso
201 – Sem conteúdo
400 – Parâmetros inválidos
401 – Não autenticado
403 – Não autorizado
404 – Não encontrado
500 – Erro interno do servidor


[contato]
qa.eng.isaiasilva@gmail.com