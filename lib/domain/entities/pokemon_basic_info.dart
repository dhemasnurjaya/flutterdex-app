class PokemonBasicInfo {
  const PokemonBasicInfo({
    required this.id,
    required this.name,
    required this.genus,
    required this.types,
  });
  final int id;
  final String name;
  final String genus;
  final List<String> types;
}
