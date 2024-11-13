import 'package:flutterdex/data/models/pokemon_stat_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_stat.freezed.dart';

@freezed
class PokemonStat with _$PokemonStat {
  const factory PokemonStat({
    required String name,
    required int value,
    required int effortValue,
  }) = _PokemonStat;

  factory PokemonStat.fromModel(PokemonStatModel model) {
    return PokemonStat(
      name: model.name,
      value: model.value,
      effortValue: model.effortValue,
    );
  }
}
