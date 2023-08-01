import 'package:freezed_annotation/freezed_annotation.dart';

part 'character_lite_entity.freezed.dart';
part 'character_lite_entity.g.dart';

@freezed
class CharacterLiteEntity with _$CharacterLiteEntity {
  const factory CharacterLiteEntity({
    required int id,
    required String name,
    required String status,
    required String species,
    required String gender,
    required String image,
  }) = _CharacterLiteEntity;

  factory CharacterLiteEntity.fromJson(Map<String, dynamic> json) =>
      _$CharacterLiteEntityFromJson(json);
}
