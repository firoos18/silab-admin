// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subject_by_id_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SubjectByIdResponseEntity _$SubjectByIdResponseEntityFromJson(
    Map<String, dynamic> json) {
  return _SubjectByIdResponseEntity.fromJson(json);
}

/// @nodoc
mixin _$SubjectByIdResponseEntity {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  SubjectEntity? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubjectByIdResponseEntityCopyWith<SubjectByIdResponseEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubjectByIdResponseEntityCopyWith<$Res> {
  factory $SubjectByIdResponseEntityCopyWith(SubjectByIdResponseEntity value,
          $Res Function(SubjectByIdResponseEntity) then) =
      _$SubjectByIdResponseEntityCopyWithImpl<$Res, SubjectByIdResponseEntity>;
  @useResult
  $Res call({int? status, String? message, SubjectEntity? data});

  $SubjectEntityCopyWith<$Res>? get data;
}

/// @nodoc
class _$SubjectByIdResponseEntityCopyWithImpl<$Res,
        $Val extends SubjectByIdResponseEntity>
    implements $SubjectByIdResponseEntityCopyWith<$Res> {
  _$SubjectByIdResponseEntityCopyWithImpl(this._value, this._then);

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
abstract class _$$SubjectByIdResponseEntityImplCopyWith<$Res>
    implements $SubjectByIdResponseEntityCopyWith<$Res> {
  factory _$$SubjectByIdResponseEntityImplCopyWith(
          _$SubjectByIdResponseEntityImpl value,
          $Res Function(_$SubjectByIdResponseEntityImpl) then) =
      __$$SubjectByIdResponseEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, SubjectEntity? data});

  @override
  $SubjectEntityCopyWith<$Res>? get data;
}

/// @nodoc
class __$$SubjectByIdResponseEntityImplCopyWithImpl<$Res>
    extends _$SubjectByIdResponseEntityCopyWithImpl<$Res,
        _$SubjectByIdResponseEntityImpl>
    implements _$$SubjectByIdResponseEntityImplCopyWith<$Res> {
  __$$SubjectByIdResponseEntityImplCopyWithImpl(
      _$SubjectByIdResponseEntityImpl _value,
      $Res Function(_$SubjectByIdResponseEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$SubjectByIdResponseEntityImpl(
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
class _$SubjectByIdResponseEntityImpl implements _SubjectByIdResponseEntity {
  const _$SubjectByIdResponseEntityImpl({this.status, this.message, this.data});

  factory _$SubjectByIdResponseEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubjectByIdResponseEntityImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  @override
  final SubjectEntity? data;

  @override
  String toString() {
    return 'SubjectByIdResponseEntity(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubjectByIdResponseEntityImpl &&
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
  _$$SubjectByIdResponseEntityImplCopyWith<_$SubjectByIdResponseEntityImpl>
      get copyWith => __$$SubjectByIdResponseEntityImplCopyWithImpl<
          _$SubjectByIdResponseEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubjectByIdResponseEntityImplToJson(
      this,
    );
  }
}

abstract class _SubjectByIdResponseEntity implements SubjectByIdResponseEntity {
  const factory _SubjectByIdResponseEntity(
      {final int? status,
      final String? message,
      final SubjectEntity? data}) = _$SubjectByIdResponseEntityImpl;

  factory _SubjectByIdResponseEntity.fromJson(Map<String, dynamic> json) =
      _$SubjectByIdResponseEntityImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  SubjectEntity? get data;
  @override
  @JsonKey(ignore: true)
  _$$SubjectByIdResponseEntityImplCopyWith<_$SubjectByIdResponseEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
