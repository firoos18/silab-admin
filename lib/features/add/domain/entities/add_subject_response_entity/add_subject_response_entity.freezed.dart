// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_subject_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddSubjectResponseEntity _$AddSubjectResponseEntityFromJson(
    Map<String, dynamic> json) {
  return _AddSubjectResponseEntity.fromJson(json);
}

/// @nodoc
mixin _$AddSubjectResponseEntity {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddSubjectResponseEntityCopyWith<AddSubjectResponseEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddSubjectResponseEntityCopyWith<$Res> {
  factory $AddSubjectResponseEntityCopyWith(AddSubjectResponseEntity value,
          $Res Function(AddSubjectResponseEntity) then) =
      _$AddSubjectResponseEntityCopyWithImpl<$Res, AddSubjectResponseEntity>;
  @useResult
  $Res call({int? status, String? message});
}

/// @nodoc
class _$AddSubjectResponseEntityCopyWithImpl<$Res,
        $Val extends AddSubjectResponseEntity>
    implements $AddSubjectResponseEntityCopyWith<$Res> {
  _$AddSubjectResponseEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddSubjectResponseEntityImplCopyWith<$Res>
    implements $AddSubjectResponseEntityCopyWith<$Res> {
  factory _$$AddSubjectResponseEntityImplCopyWith(
          _$AddSubjectResponseEntityImpl value,
          $Res Function(_$AddSubjectResponseEntityImpl) then) =
      __$$AddSubjectResponseEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message});
}

/// @nodoc
class __$$AddSubjectResponseEntityImplCopyWithImpl<$Res>
    extends _$AddSubjectResponseEntityCopyWithImpl<$Res,
        _$AddSubjectResponseEntityImpl>
    implements _$$AddSubjectResponseEntityImplCopyWith<$Res> {
  __$$AddSubjectResponseEntityImplCopyWithImpl(
      _$AddSubjectResponseEntityImpl _value,
      $Res Function(_$AddSubjectResponseEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_$AddSubjectResponseEntityImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddSubjectResponseEntityImpl implements _AddSubjectResponseEntity {
  const _$AddSubjectResponseEntityImpl({this.status, this.message});

  factory _$AddSubjectResponseEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddSubjectResponseEntityImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;

  @override
  String toString() {
    return 'AddSubjectResponseEntity(status: $status, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddSubjectResponseEntityImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddSubjectResponseEntityImplCopyWith<_$AddSubjectResponseEntityImpl>
      get copyWith => __$$AddSubjectResponseEntityImplCopyWithImpl<
          _$AddSubjectResponseEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddSubjectResponseEntityImplToJson(
      this,
    );
  }
}

abstract class _AddSubjectResponseEntity implements AddSubjectResponseEntity {
  const factory _AddSubjectResponseEntity(
      {final int? status,
      final String? message}) = _$AddSubjectResponseEntityImpl;

  factory _AddSubjectResponseEntity.fromJson(Map<String, dynamic> json) =
      _$AddSubjectResponseEntityImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$AddSubjectResponseEntityImplCopyWith<_$AddSubjectResponseEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
