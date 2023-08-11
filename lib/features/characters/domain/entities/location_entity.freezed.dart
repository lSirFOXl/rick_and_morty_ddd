// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LocationEntity _$LocationEntityFromJson(Map<String, dynamic> json) {
  return _LocationEntity.fromJson(json);
}

/// @nodoc
mixin _$LocationEntity {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationEntityCopyWith<LocationEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationEntityCopyWith<$Res> {
  factory $LocationEntityCopyWith(
          LocationEntity value, $Res Function(LocationEntity) then) =
      _$LocationEntityCopyWithImpl<$Res, LocationEntity>;
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class _$LocationEntityCopyWithImpl<$Res, $Val extends LocationEntity>
    implements $LocationEntityCopyWith<$Res> {
  _$LocationEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LocationEntityCopyWith<$Res>
    implements $LocationEntityCopyWith<$Res> {
  factory _$$_LocationEntityCopyWith(
          _$_LocationEntity value, $Res Function(_$_LocationEntity) then) =
      __$$_LocationEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class __$$_LocationEntityCopyWithImpl<$Res>
    extends _$LocationEntityCopyWithImpl<$Res, _$_LocationEntity>
    implements _$$_LocationEntityCopyWith<$Res> {
  __$$_LocationEntityCopyWithImpl(
      _$_LocationEntity _value, $Res Function(_$_LocationEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_$_LocationEntity(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LocationEntity implements _LocationEntity {
  const _$_LocationEntity({required this.name, required this.url});

  factory _$_LocationEntity.fromJson(Map<String, dynamic> json) =>
      _$$_LocationEntityFromJson(json);

  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'LocationEntity(name: $name, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocationEntity &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocationEntityCopyWith<_$_LocationEntity> get copyWith =>
      __$$_LocationEntityCopyWithImpl<_$_LocationEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocationEntityToJson(
      this,
    );
  }
}

abstract class _LocationEntity implements LocationEntity {
  const factory _LocationEntity(
      {required final String name,
      required final String url}) = _$_LocationEntity;

  factory _LocationEntity.fromJson(Map<String, dynamic> json) =
      _$_LocationEntity.fromJson;

  @override
  String get name;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$_LocationEntityCopyWith<_$_LocationEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
