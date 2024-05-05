// ignore_for_file: unused_field

enum EvolutionTrigger {
  _,
  levelUp,
  trade,
  useItem,
  shed,
  spin,
  towerOfDarkness,
  towerOfWaters,
  threeCriticalHits,
  takeDamage,
  other,
  agileStyleMove,
  strongStyleMove,
  recoilDamage,
}

class PokemonEvolution {
  final int id;
  final String name;
  final EvolutionTrigger? trigger;
  final int? minLevel;
  final String? timeOfDay;
  final int? minHappiness;
  final int? minAffection;
  final int? relativePhysicalStats;
  final int? minBeauty;
  final bool needsOverworldRain;
  final bool turnUpsideDown;

  const PokemonEvolution({
    required this.id,
    required this.name,
    this.trigger,
    this.minLevel,
    this.timeOfDay,
    this.minHappiness,
    this.minAffection,
    this.relativePhysicalStats,
    this.minBeauty,
    this.needsOverworldRain = false,
    this.turnUpsideDown = false,
  });

  // TODO: needs table joins
  // final int? evolutionTriggerId;
  // final int? evolvedSpeciesId;
  // final int? genderId;
  // final int? knownMoveId;
  // final int? knownMoveTypeId;
  // final int? partySpeciesId;
  // final int? partyTypeId;
  // final int? tradeSpeciesId;
  // final int? evolutionItemId;
  // final int? heldItemId;
  // final int? locationId;
}
