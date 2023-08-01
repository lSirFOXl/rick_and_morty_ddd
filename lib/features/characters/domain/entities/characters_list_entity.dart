import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty_ddd/features/characters/domain/entities/character_lite_entity.dart';
import 'package:rick_and_morty_ddd/features/characters/domain/entities/info_entity.dart';

part 'characters_list_entity.freezed.dart';
part 'characters_list_entity.g.dart';

@freezed
class CharactersListEntity with _$CharactersListEntity {
  const factory CharactersListEntity({
    required InfoEntity info,
    required List<CharacterLiteEntity> results,
  }) = _CharactersListEntity;

  factory CharactersListEntity.fromJson(Map<String, dynamic> json) =>
      _$CharactersListEntityFromJson(json);
}
