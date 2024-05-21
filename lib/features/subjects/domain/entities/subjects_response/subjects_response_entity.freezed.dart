// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subjects_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SubjectsResponseEntity _$SubjectsResponseEntityFromJson(
    Map<String, dynamic> json) {
  return _SubjectsResponseEntity.fromJson(json);
}

/// @nodoc
mixin _$SubjectsResponseEntity {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<SubjectEntity>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubjectsResponseEntityCopyWith<SubjectsResponseEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubjectsResponseEntityCopyWith<$Res> {
  factory $SubjectsResponseEntityCopyWith(SubjectsResponseEntity value,
          $Res Function(SubjectsResponseEntity) then) =
      _$SubjectsResponseEntityCopyWithImpl<$Res, SubjectsResponseEntity>;
  @useResult
  $Res call({int? status, String? message, List<SubjectEntity>? data});
}

/// @nodoc
class _$SubjectsResponseEntityCopyWithImpl<$Res,
        $Val extends SubjectsResponseEntity>
    implements $SubjectsResponseEntityCopyWith<$Res> {
  _$SubjectsResponseEntityCopyWithImpl(this._value, this._then);

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
              as List<SubjectEntity>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubjectsResponseEntityImplCopyWith<$Res>
    implements $SubjectsResponseEntityCopyWith<$Res> {
  factory _$$SubjectsResponseEntityImplCopyWith(
          _$SubjectsResponseEntityImpl value,
          $Res Function(_$SubjectsResponseEntityImpl) then) =
      __$$SubjectsResponseEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, List<SubjectEntity>? data});
}

/// @nodoc
class __$$SubjectsResponseEntityImplCopyWithImpl<$Res>
    extends _$SubjectsResponseEntityCopyWithImpl<$Res,
        _$SubjectsResponseEntityImpl>
    implements _$$SubjectsResponseEntityImplCopyWith<$Res> {
  __$$SubjectsResponseEntityImplCopyWithImpl(
      _$SubjectsResponseEntityImpl _value,
      $Res Function(_$SubjectsResponseEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$SubjectsResponseEntityImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<SubjectEntity>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubjectsResponseEntityImpl implements _SubjectsResponseEntity {
  const _$SubjectsResponseEntityImpl(
      {this.status, this.message, final List<SubjectEntity>? data})
      : _data = data;

  factory _$SubjectsResponseEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubjectsResponseEntityImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  final List<SubjectEntity>? _data;
  @override
  List<SubjectEntity>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SubjectsResponseEntity(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubjectsResponseEntityImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, message, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubjectsResponseEntityImplCopyWith<_$SubjectsResponseEntityImpl>
      get copyWith => __$$SubjectsResponseEntityImplCopyWithImpl<
          _$SubjectsResponseEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubjectsResponseEntityImplToJson(
      this,
    );
  }
}

abstract class _SubjectsResponseEntity implements SubjectsResponseEntity {
  const factory _SubjectsResponseEntity(
      {final int? status,
      final String? message,
      final List<SubjectEntity>? data}) = _$SubjectsResponseEntityImpl;

  factory _SubjectsResponseEntity.fromJson(Map<String, dynamic> json) =
      _$SubjectsResponseEntityImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  List<SubjectEntity>? get data;
  @override
  @JsonKey(ignore: true)
  _$$SubjectsResponseEntityImplCopyWith<_$SubjectsResponseEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
