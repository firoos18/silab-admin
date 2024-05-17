// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_class_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddClassResponseEntity _$AddClassResponseEntityFromJson(
    Map<String, dynamic> json) {
  return _AddClassResponseEntity.fromJson(json);
}

/// @nodoc
mixin _$AddClassResponseEntity {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  SubjectEntity? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddClassResponseEntityCopyWith<AddClassResponseEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddClassResponseEntityCopyWith<$Res> {
  factory $AddClassResponseEntityCopyWith(AddClassResponseEntity value,
          $Res Function(AddClassResponseEntity) then) =
      _$AddClassResponseEntityCopyWithImpl<$Res, AddClassResponseEntity>;
  @useResult
  $Res call({int? status, String? message, SubjectEntity? data});

  $SubjectEntityCopyWith<$Res>? get data;
}

/// @nodoc
class _$AddClassResponseEntityCopyWithImpl<$Res,
        $Val extends AddClassResponseEntity>
    implements $AddClassResponseEntityCopyWith<$Res> {
  _$AddClassResponseEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
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
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SubjectEntity?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SubjectEntityCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $SubjectEntityCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AddClassResponseEntityImplCopyWith<$Res>
    implements $AddClassResponseEntityCopyWith<$Res> {
  factory _$$AddClassResponseEntityImplCopyWith(
          _$AddClassResponseEntityImpl value,
          $Res Function(_$AddClassResponseEntityImpl) then) =
      __$$AddClassResponseEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, SubjectEntity? data});

  @override
  $SubjectEntityCopyWith<$Res>? get data;
}

/// @nodoc
class __$$AddClassResponseEntityImplCopyWithImpl<$Res>
    extends _$AddClassResponseEntityCopyWithImpl<$Res,
        _$AddClassResponseEntityImpl>
    implements _$$AddClassResponseEntityImplCopyWith<$Res> {
  __$$AddClassResponseEntityImplCopyWithImpl(
      _$AddClassResponseEntityImpl _value,
      $Res Function(_$AddClassResponseEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$AddClassResponseEntityImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SubjectEntity?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddClassResponseEntityImpl implements _AddClassResponseEntity {
  const _$AddClassResponseEntityImpl({this.status, this.message, this.data});

  factory _$AddClassResponseEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddClassResponseEntityImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  @override
  final SubjectEntity? data;

  @override
  String toString() {
    return 'AddClassResponseEntity(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddClassResponseEntityImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddClassResponseEntityImplCopyWith<_$AddClassResponseEntityImpl>
      get copyWith => __$$AddClassResponseEntityImplCopyWithImpl<
          _$AddClassResponseEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddClassResponseEntityImplToJson(
      this,
    );
  }
}

abstract class _AddClassResponseEntity implements AddClassResponseEntity {
  const factory _AddClassResponseEntity(
      {final int? status,
      final String? message,
      final SubjectEntity? data}) = _$AddClassResponseEntityImpl;

  factory _AddClassResponseEntity.fromJson(Map<String, dynamic> json) =
      _$AddClassResponseEntityImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  SubjectEntity? get data;
  @override
  @JsonKey(ignore: true)
  _$$AddClassResponseEntityImplCopyWith<_$AddClassResponseEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
