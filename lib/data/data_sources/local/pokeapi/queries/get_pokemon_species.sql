SELECT 
  p.id, 
  p.name, 
  p.height, 
  p.weight, 
  ps.gender_rate, 
  ps.capture_rate, 
  ps.base_happiness, 
  ps.is_baby, 
  ps.hatch_counter, 
  psft.flavor_text AS description, 
  pgrd.description AS growth_rate 
FROM 
  pokemon_v2_pokemonspecies ps 
  JOIN pokemon_v2_pokemon p ON ps.id = p.pokemon_species_id 
  JOIN pokemon_v2_pokemonspeciesflavortext psft ON ps.id = psft.pokemon_species_id 
  JOIN pokemon_v2_growthrate pgr ON ps.growth_rate_id = pgr.id 
  JOIN pokemon_v2_growthratedescription pgrd ON pgr.id - pgrd.growth_rate_id 
WHERE 
  p.id = ? 
  AND psft.language_id = 9 
  AND pgrd.language_id = 9 
ORDER BY 
  psft.version_id DESC 
LIMIT 
  1;
