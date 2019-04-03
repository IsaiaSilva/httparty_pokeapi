
Feature: Using the GET verb

I, as a student of the service layer, I want to learn how to automate the verb GET
So that it can be a better QA in the future.

#TC_001
Scenario: Automating GET Successfully
Given that I make a GET in API
Then the return of the request will be 200

#TC_002
Scenario: Automating GET Unsuccessfully
Given I make a GET in a nonexistent API
Then the return of the request must be 404

#TC_003
Scenario: Consult a Pokémon Successfully
Given that I have a list of pokémons
When I do the query in the API by "squirtle"
Then the response code will be 200
Then The API returns the data of this pokémon

#TC_004
Scenario: Invalid Pokemon query in API
Given that I have a list of pokémons
When I do the query in the API service by "isaias"
Then the response code must be 404
