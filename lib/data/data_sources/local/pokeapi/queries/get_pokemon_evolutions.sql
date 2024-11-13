SELECT
  ps.id,
  psn.name,
  GROUP_CONCAT(DISTINCT t.name) AS types,
  psn.genus,
  ps.is_baby,
  ps.evolves_from_species_id,
  GROUP_CONCAT(DISTINCT etj.name) AS evolution_triggers,
  pe.min_level,
  pe.time_of_day,
  pe.min_happiness,
  pe.min_affection,
  pe.min_beauty,
  pe.relative_physical_stats,
  pe.needs_overworld_rain,
  pe.turn_upside_down,
  pe.gender_id,
  pe.known_move_id,
  pi_held.name AS held_item_name,
  pi_evolution.name AS evolution_item_name
FROM
  pokemon_v2_pokemonspecies ps
  JOIN pokemon_v2_pokemonspeciesname psn ON ps.id = psn.pokemon_species_id
  AND psn.language_id = 9
  JOIN pokemon_v2_pokemontype pt ON ps.id = pt.pokemon_id
  JOIN pokemon_v2_type t ON pt.type_id = t.id
  LEFT JOIN pokemon_v2_pokemonevolution pe ON ps.id = pe.evolved_species_id
  LEFT JOIN (
    SELECT
      et.id,
      etn.name
    FROM
      pokemon_v2_evolutiontrigger et
      JOIN pokemon_v2_evolutiontriggername etn ON et.id = etn.evolution_trigger_id
    WHERE
      etn.language_id = 9
  ) etj ON pe.evolution_trigger_id = etj.id
  LEFT JOIN (
    SELECT
      pi.id,
      pin.name
    FROM
      pokemon_v2_item pi
      JOIN pokemon_v2_itemname pin ON pi.id = pin.item_id
    WHERE
      pin.language_id = 9
  ) pi_held ON pe.held_item_id = pi_held.id
  LEFT JOIN (
    SELECT
      pi.id,
      pin.name
    FROM
      pokemon_v2_item pi
      JOIN pokemon_v2_itemname pin ON pi.id = pin.item_id
    WHERE
      pin.language_id = 9
  ) pi_evolution ON pe.evolution_item_id = pi_evolution.id
WHERE
  ps.evolution_chain_id = (
    SELECT
      ec.id
    FROM
      pokemon_v2_pokemonspecies sp
      JOIN pokemon_v2_evolutionchain ec ON sp.evolution_chain_id = ec.id
    WHERE
      sp.id = ?
  )
GROUP BY
  ps.id, ps.is_baby, psn.id
ORDER BY
  ps.is_baby,
  psn.id DESC;
