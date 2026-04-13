import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_egg_group_model.freezed.dart';

@freezed
abstract class PokemonEggGroupModel with _$PokemonEggGroupModel {
  const factory PokemonEggGroupModel({
    required String name,
  }) = _PokemonEggGroupModel;
}
