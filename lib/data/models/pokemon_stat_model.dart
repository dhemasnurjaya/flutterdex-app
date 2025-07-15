import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_stat_model.freezed.dart';

@freezed
abstract class PokemonStatModel with _$PokemonStatModel {
  const factory PokemonStatModel({
    required String name,
    required int value,
    required int effortValue,
  }) = _PokemonStatModel;
}
