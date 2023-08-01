// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'characters_list_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CharactersListEntity _$$_CharactersListEntityFromJson(
        Map<String, dynamic> json) =>
    _$_CharactersListEntity(
      info: InfoEntity.fromJson(json['info'] as Map<String, dynamic>),
      results: (json['results'] as List<dynamic>)
          .map((e) => CharacterLiteEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CharactersListEntityToJson(
        _$_CharactersListEntity instance) =>
    <String, dynamic>{
      'info': instance.info,
      'results': instance.results,
    };
