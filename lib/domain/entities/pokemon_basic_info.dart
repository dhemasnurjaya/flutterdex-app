import 'package:flutterdex/data/models/pokemon_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_basic_info.freezed.dart';

@freezed
class PokemonBasicInfo with _$PokemonBasicInfo {
  factory PokemonBasicInfo({
    required int id,
    required String name,
    required String genus,
    required List<String> types,
  }) = _PokemonBasicInfo;

  factory PokemonBasicInfo.fromModel(PokemonModel model) {
    return PokemonBasicInfo(
      id: model.id,
      name: model.name,
      genus: model.genus,
      types: model.types.split(','),
    );
  }
}
