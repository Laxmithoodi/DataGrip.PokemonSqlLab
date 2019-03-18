//
/*Sort the data by finding out which trainer has the strongest pokemon so that this will act as a ranking of strongest to weakest trainer.
You may interpret strongest in whatever way you want, but you will have to explain your decision*/

//Based on pokemon speed considered the strongest to weakest.

SELECT p.id, p.name AS PokemonName, t.trainername AS TrainerName, pt.pokelevel AS Level
,tp.name AS PrimaryType, ts.name AS SecondaryType
,pt.speed
FROM pokemons p
  JOIN pokemon_trainer pt ON pt.pokemon_id=p.id
  JOIN  trainers t ON pt.trainerID = t.trainerID
  JOIN types tp ON tp.id=p.primary_type
 LEFT JOIN types ts ON ts.id=p.secondary_type
ORDER BY pt.speed desc;