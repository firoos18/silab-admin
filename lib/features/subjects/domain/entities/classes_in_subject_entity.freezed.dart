// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'classes_in_subject_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ClassesInSubjectEntity _$ClassesInSubjectEntityFromJson(
    Map<String, dynamic> json) {
  return _ClassesInSubjectEntity.fromJson(json);
}

/// @nodoc
mixin _$ClassesInSubjectEntity {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClassesInSubjectEntityCopyWith<ClassesInSubjectEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassesInSubjectEntityCopyWith<$Res> {
  factory $ClassesInSubjectEntityCopyWith(ClassesInSubjectEntity value,
          $Res Function(ClassesInSubjectEntity) then) =
      _$ClassesInSubjectEntityCopyWithImpl<$Res, ClassesInSubjectEntity>;
  @useResult
  $Res call({String? id, String? name});
}

/// @nodoc
class _$ClassesInSubjectEntityCopyWithImpl<$Res,
        $Val extends ClassesInSubjectEntity>
    implements $ClassesInSubjectEntityCopyWith<$Res> {
  _$ClassesInSubjectEntityCopyWithImpl(this._value, this._then);

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
abstract class _$$ClassesInSubjectEntityImplCopyWith<$Res>
    implements $ClassesInSubjectEntityCopyWith<$Res> {
  factory _$$ClassesInSubjectEntityImplCopyWith(
          _$ClassesInSubjectEntityImpl value,
          $Res Function(_$ClassesInSubjectEntityImpl) then) =
      __$$ClassesInSubjectEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? name});
}

/// @nodoc
class __$$ClassesInSubjectEntityImplCopyWithImpl<$Res>
    extends _$ClassesInSubjectEntityCopyWithImpl<$Res,
        _$ClassesInSubjectEntityImpl>
    implements _$$ClassesInSubjectEntityImplCopyWith<$Res> {
  __$$ClassesInSubjectEntityImplCopyWithImpl(
      _$ClassesInSubjectEntityImpl _value,
      $Res Function(_$ClassesInSubjectEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$ClassesInSubjectEntityImpl(
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
class _$ClassesInSubjectEntityImpl implements _ClassesInSubjectEntity {
  const _$ClassesInSubjectEntityImpl({this.id, this.name});

  factory _$ClassesInSubjectEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClassesInSubjectEntityImplFromJson(json);

  @override
  final String? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'ClassesInSubjectEntity(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClassesInSubjectEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClassesInSubjectEntityImplCopyWith<_$ClassesInSubjectEntityImpl>
      get copyWith => __$$ClassesInSubjectEntityImplCopyWithImpl<
          _$ClassesInSubjectEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClassesInSubjectEntityImplToJson(
      this,
    );
  }
}

abstract class _ClassesInSubjectEntity implements ClassesInSubjectEntity {
  const factory _ClassesInSubjectEntity(
      {final String? id, final String? name}) = _$ClassesInSubjectEntityImpl;

  factory _ClassesInSubjectEntity.fromJson(Map<String, dynamic> json) =
      _$ClassesInSubjectEntityImpl.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$ClassesInSubjectEntityImplCopyWith<_$ClassesInSubjectEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
