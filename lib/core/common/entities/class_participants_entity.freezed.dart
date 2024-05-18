// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'class_participants_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ClassParticipantsEntity _$ClassParticipantsEntityFromJson(
    Map<String, dynamic> json) {
  return _ClassParticipantsEntity.fromJson(json);
}

/// @nodoc
mixin _$ClassParticipantsEntity {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClassParticipantsEntityCopyWith<ClassParticipantsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassParticipantsEntityCopyWith<$Res> {
  factory $ClassParticipantsEntityCopyWith(ClassParticipantsEntity value,
          $Res Function(ClassParticipantsEntity) then) =
      _$ClassParticipantsEntityCopyWithImpl<$Res, ClassParticipantsEntity>;
  @useResult
  $Res call({String? id, String? name});
}

/// @nodoc
class _$ClassParticipantsEntityCopyWithImpl<$Res,
        $Val extends ClassParticipantsEntity>
    implements $ClassParticipantsEntityCopyWith<$Res> {
  _$ClassParticipantsEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClassParticipantsEntityImplCopyWith<$Res>
    implements $ClassParticipantsEntityCopyWith<$Res> {
  factory _$$ClassParticipantsEntityImplCopyWith(
          _$ClassParticipantsEntityImpl value,
          $Res Function(_$ClassParticipantsEntityImpl) then) =
      __$$ClassParticipantsEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? name});
}

/// @nodoc
class __$$ClassParticipantsEntityImplCopyWithImpl<$Res>
    extends _$ClassParticipantsEntityCopyWithImpl<$Res,
        _$ClassParticipantsEntityImpl>
    implements _$$ClassParticipantsEntityImplCopyWith<$Res> {
  __$$ClassParticipantsEntityImplCopyWithImpl(
      _$ClassParticipantsEntityImpl _value,
      $Res Function(_$ClassParticipantsEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$ClassParticipantsEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClassParticipantsEntityImpl implements _ClassParticipantsEntity {
  const _$ClassParticipantsEntityImpl({this.id, this.name});

  factory _$ClassParticipantsEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClassParticipantsEntityImplFromJson(json);

  @override
  final String? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'ClassParticipantsEntity(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClassParticipantsEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClassParticipantsEntityImplCopyWith<_$ClassParticipantsEntityImpl>
      get copyWith => __$$ClassParticipantsEntityImplCopyWithImpl<
          _$ClassParticipantsEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClassParticipantsEntityImplToJson(
      this,
    );
  }
}

abstract class _ClassParticipantsEntity implements ClassParticipantsEntity {
  const factory _ClassParticipantsEntity(
      {final String? id, final String? name}) = _$ClassParticipantsEntityImpl;

  factory _ClassParticipantsEntity.fromJson(Map<String, dynamic> json) =
      _$ClassParticipantsEntityImpl.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$ClassParticipantsEntityImplCopyWith<_$ClassParticipantsEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
