SELECT 
  ps.id, 
  psn.name, 
  GROUP_CONCAT(t.name) AS types, 
  psn.genus 
FROM 
  pokemon_v2_pokemonspecies ps 
  JOIN pokemon_v2_pokemontype pt ON ps.id = pt.pokemon_id 
  JOIN pokemon_v2_type t ON pt.type_id = t.id 
  JOIN pokemon_v2_pokemonspeciesname psn ON ps.id = psn.pokemon_species_id 
WHERE 
  (
    ps.id = ? 
    OR psn.name LIKE ?
  ) 
  AND psn.language_id = 9 
GROUP BY 
  ps.id 
LIMIT 
  ? OFFSET ?;
