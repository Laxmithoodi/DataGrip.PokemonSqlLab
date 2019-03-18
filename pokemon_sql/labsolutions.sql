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

//What is each pokemon's primary type?
SELECT p.name, t.name as primary_typename,  p.primary_type FROM pokemons p join types t
ON p.primary_type = t.id;

//What is Rufflet's secondary type?
SELECT p.name, t.name as secondary_typename FROM pokemons p JOIN types t
ON p.secondary_type = t.id WHERE p.name ="Rufflet";

//Ans- Rufflet	Flying

//What are the names of the pokemon that belong to the trainer with trainerID 303?
SELECT  pokemons.name, pokemon_trainer.trainerID FROM pokemons JOIN pokemon_trainer
ON pokemons.id = pokemon_trainer.pokemon_id WHERE pokemon_trainer.trainerID = 303;
//Ans - Wailord	303
//      Vileplume	303

//How many pokemon have a secondary type Poison
SELECT COUNT(p.secondary_type) FROM pokemons p JOIN types t
ON p.secondary_type = t.id WHERE t.name= "Poison";
//Ans - 31

//What are all the primary types and how many pokemon have that type?
SELECT t.name, COUNT(p.name) as primaryType_Count FROM types t JOIN pokemons p
WHERE t.id = p.primary_type GROUP BY t.name;

//How many pokemon at level 100 does each trainer with at least one level 100 pokemone have? (Hint: your query should not display a trainer
SELECT COUNT(pokelevel) as pokelevel_Count,trainerID FROM pokemon_trainer
WHERE pokelevel =100
GROUP BY trainerID;


// How many pokemon only belong to one trainer and no other?
SELECT COUNT(*) as Count, pokemon_id FROM pokemon_trainer
GROUP BY pokemon_id HAVING COUNT(*) =1;
