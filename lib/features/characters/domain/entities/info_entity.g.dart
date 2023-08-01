// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'info_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InfoEntity _$$_InfoEntityFromJson(Map<String, dynamic> json) =>
    _$_InfoEntity(
      count: json['count'] as int,
      pages: json['pages'] as int,
      next: json['next'] as String?,
      prev: json['prev'] as String?,
    );

Map<String, dynamic> _$$_InfoEntityToJson(_$_InfoEntity instance) =>
    <String, dynamic>{
      'count': instance.count,
      'pages': instance.pages,
      'next': instance.next,
      'prev': instance.prev,
    };
