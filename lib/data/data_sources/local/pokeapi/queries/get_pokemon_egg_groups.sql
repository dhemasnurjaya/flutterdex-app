SELECT 
  egn.name 
FROM 
  pokemon_v2_pokemonegggroup peg 
  JOIN pokemon_v2_egggroup eg ON peg.egg_group_id = eg.id 
  JOIN pokemon_v2_egggroupname egn ON eg.id = egn.egg_group_id 
WHERE 
  peg.pokemon_species_id = ? 
  AND egn.language_id = 9;
