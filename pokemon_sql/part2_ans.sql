//What are all the types of pokemon that a pokemon can have?
SELECT name  FROM types;
//What is the name of the pokemon with id 45?
SELECT name, id FROM pokemon.pokemons where id =45;
//Answer- Eevee	 45

//How many pokemon are there?
  SELECT  COUNT(*) FROM pokemons;
//Ans- 656

//How many types are there?
SELECT COUNT(name) FROM types;
//Answer = 18types

//How many pokemon have a secondary type?
SELECT COUNT(secondary_type) FROM pokemon.pokemons;
//An - 316