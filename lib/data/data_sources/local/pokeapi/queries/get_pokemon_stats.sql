SELECT 
  statn.name, 
  pstat.base_stat, 
  pstat.effort 
FROM 
  pokemon_v2_pokemonstat pstat 
  JOIN pokemon_v2_pokemon p ON pstat.pokemon_id = p.id 
  JOIN pokemon_v2_stat stat ON pstat.stat_id = stat.id 
  JOIN pokemon_v2_statname statn ON stat.id = statn.stat_id 
WHERE 
  p.id = ? 
  AND statn.language_id = 9;
