// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'characters_list_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CharactersListEntity _$CharactersListEntityFromJson(Map<String, dynamic> json) {
  return _CharactersListEntity.fromJson(json);
}

/// @nodoc
mixin _$CharactersListEntity {
  InfoEntity get info => throw _privateConstructorUsedError;
  List<CharacterLiteEntity> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CharactersListEntityCopyWith<CharactersListEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharactersListEntityCopyWith<$Res> {
  factory $CharactersListEntityCopyWith(CharactersListEntity value,
          $Res Function(CharactersListEntity) then) =
      _$CharactersListEntityCopyWithImpl<$Res, CharactersListEntity>;
  @useResult
  $Res call({InfoEntity info, List<CharacterLiteEntity> results});

  $InfoEntityCopyWith<$Res> get info;
}

/// @nodoc
class _$CharactersListEntityCopyWithImpl<$Res,
        $Val extends CharactersListEntity>
    implements $CharactersListEntityCopyWith<$Res> {
  _$CharactersListEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as InfoEntity,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<CharacterLiteEntity>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $InfoEntityCopyWith<$Res> get info {
    return $InfoEntityCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CharactersListEntityCopyWith<$Res>
    implements $CharactersListEntityCopyWith<$Res> {
  factory _$$_CharactersListEntityCopyWith(_$_CharactersListEntity value,
          $Res Function(_$_CharactersListEntity) then) =
      __$$_CharactersListEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({InfoEntity info, List<CharacterLiteEntity> results});

  @override
  $InfoEntityCopyWith<$Res> get info;
}

/// @nodoc
class __$$_CharactersListEntityCopyWithImpl<$Res>
    extends _$CharactersListEntityCopyWithImpl<$Res, _$_CharactersListEntity>
    implements _$$_CharactersListEntityCopyWith<$Res> {
  __$$_CharactersListEntityCopyWithImpl(_$_CharactersListEntity _value,
      $Res Function(_$_CharactersListEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
    Object? results = null,
  }) {
    return _then(_$_CharactersListEntity(
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as InfoEntity,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<CharacterLiteEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CharactersListEntity implements _CharactersListEntity {
  const _$_CharactersListEntity(
      {required this.info, required final List<CharacterLiteEntity> results})
      : _results = results;

  factory _$_CharactersListEntity.fromJson(Map<String, dynamic> json) =>
      _$$_CharactersListEntityFromJson(json);

  @override
  final InfoEntity info;
  final List<CharacterLiteEntity> _results;
  @override
  List<CharacterLiteEntity> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'CharactersListEntity(info: $info, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CharactersListEntity &&
            (identical(other.info, info) || other.info == info) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, info, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CharactersListEntityCopyWith<_$_CharactersListEntity> get copyWith =>
      __$$_CharactersListEntityCopyWithImpl<_$_CharactersListEntity>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CharactersListEntityToJson(
      this,
    );
  }
}

abstract class _CharactersListEntity implements CharactersListEntity {
  const factory _CharactersListEntity(
          {required final InfoEntity info,
          required final List<CharacterLiteEntity> results}) =
      _$_CharactersListEntity;

  factory _CharactersListEntity.fromJson(Map<String, dynamic> json) =
      _$_CharactersListEntity.fromJson;

  @override
  InfoEntity get info;
  @override
  List<CharacterLiteEntity> get results;
  @override
  @JsonKey(ignore: true)
  _$$_CharactersListEntityCopyWith<_$_CharactersListEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
