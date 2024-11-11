SELECT 
  pa.is_hidden, 
  an.name, 
  aft.flavor_text AS 'description', 
  gn.name AS 'generation' 
FROM 
  pokemon_v2_pokemonability pa 
  JOIN pokemon_v2_ability a ON pa.ability_id = a.id 
  JOIN pokemon_v2_abilityname an ON a.id = an.ability_id 
  JOIN pokemon_v2_abilityflavortext aft ON a.id = aft.ability_id 
  JOIN pokemon_v2_generation g ON a.generation_id = g.id 
  JOIN pokemon_v2_generationname gn ON g.id = gn.generation_id 
WHERE 
  pa.pokemon_id = ? 
  AND an.language_id = 9 
  AND gn.language_id = 9 
  AND aft.language_id = 9 
  AND aft.version_group_id = (
    SELECT 
      max(version_group_id) 
    FROM 
      pokemon_v2_abilityflavortext aft 
      JOIN pokemon_v2_ability a ON aft.ability_id = a.id 
      JOIN pokemon_v2_pokemonability pa ON a.id = pa.ability_id 
    WHERE 
      pa.pokemon_id = ?
  );
