// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'class_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ClassEntity _$ClassEntityFromJson(Map<String, dynamic> json) {
  return _ClassEntity.fromJson(json);
}

/// @nodoc
mixin _$ClassEntity {
  String? get name => throw _privateConstructorUsedError;
  String? get day => throw _privateConstructorUsedError;
  String? get startAt => throw _privateConstructorUsedError;
  String? get endAt => throw _privateConstructorUsedError;
  List<dynamic>? get assistants => throw _privateConstructorUsedError;
  int? get quota => throw _privateConstructorUsedError;
  bool? get isFull => throw _privateConstructorUsedError;
  List<dynamic>? get participants => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClassEntityCopyWith<ClassEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassEntityCopyWith<$Res> {
  factory $ClassEntityCopyWith(
          ClassEntity value, $Res Function(ClassEntity) then) =
      _$ClassEntityCopyWithImpl<$Res, ClassEntity>;
  @useResult
  $Res call(
      {String? name,
      String? day,
      String? startAt,
      String? endAt,
      List<dynamic>? assistants,
      int? quota,
      bool? isFull,
      List<dynamic>? participants});
}

/// @nodoc
class _$ClassEntityCopyWithImpl<$Res, $Val extends ClassEntity>
    implements $ClassEntityCopyWith<$Res> {
  _$ClassEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? day = freezed,
    Object? startAt = freezed,
    Object? endAt = freezed,
    Object? assistants = freezed,
    Object? quota = freezed,
    Object? isFull = freezed,
    Object? participants = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String?,
      startAt: freezed == startAt
          ? _value.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as String?,
      endAt: freezed == endAt
          ? _value.endAt
          : endAt // ignore: cast_nullable_to_non_nullable
              as String?,
      assistants: freezed == assistants
          ? _value.assistants
          : assistants // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      quota: freezed == quota
          ? _value.quota
          : quota // ignore: cast_nullable_to_non_nullable
              as int?,
      isFull: freezed == isFull
          ? _value.isFull
          : isFull // ignore: cast_nullable_to_non_nullable
              as bool?,
      participants: freezed == participants
          ? _value.participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClassEntityImplCopyWith<$Res>
    implements $ClassEntityCopyWith<$Res> {
  factory _$$ClassEntityImplCopyWith(
          _$ClassEntityImpl value, $Res Function(_$ClassEntityImpl) then) =
      __$$ClassEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? day,
      String? startAt,
      String? endAt,
      List<dynamic>? assistants,
      int? quota,
      bool? isFull,
      List<dynamic>? participants});
}

/// @nodoc
class __$$ClassEntityImplCopyWithImpl<$Res>
    extends _$ClassEntityCopyWithImpl<$Res, _$ClassEntityImpl>
    implements _$$ClassEntityImplCopyWith<$Res> {
  __$$ClassEntityImplCopyWithImpl(
      _$ClassEntityImpl _value, $Res Function(_$ClassEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? day = freezed,
    Object? startAt = freezed,
    Object? endAt = freezed,
    Object? assistants = freezed,
    Object? quota = freezed,
    Object? isFull = freezed,
    Object? participants = freezed,
  }) {
    return _then(_$ClassEntityImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String?,
      startAt: freezed == startAt
          ? _value.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as String?,
      endAt: freezed == endAt
          ? _value.endAt
          : endAt // ignore: cast_nullable_to_non_nullable
              as String?,
      assistants: freezed == assistants
          ? _value._assistants
          : assistants // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      quota: freezed == quota
          ? _value.quota
          : quota // ignore: cast_nullable_to_non_nullable
              as int?,
      isFull: freezed == isFull
          ? _value.isFull
          : isFull // ignore: cast_nullable_to_non_nullable
              as bool?,
      participants: freezed == participants
          ? _value._participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClassEntityImpl implements _ClassEntity {
  const _$ClassEntityImpl(
      {this.name,
      this.day,
      this.startAt,
      this.endAt,
      final List<dynamic>? assistants,
      this.quota,
      this.isFull,
      final List<dynamic>? participants})
      : _assistants = assistants,
        _participants = participants;

  factory _$ClassEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClassEntityImplFromJson(json);

  @override
  final String? name;
  @override
  final String? day;
  @override
  final String? startAt;
  @override
  final String? endAt;
  final List<dynamic>? _assistants;
  @override
  List<dynamic>? get assistants {
    final value = _assistants;
    if (value == null) return null;
    if (_assistants is EqualUnmodifiableListView) return _assistants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? quota;
  @override
  final bool? isFull;
  final List<dynamic>? _participants;
  @override
  List<dynamic>? get participants {
    final value = _participants;
    if (value == null) return null;
    if (_participants is EqualUnmodifiableListView) return _participants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ClassEntity(name: $name, day: $day, startAt: $startAt, endAt: $endAt, assistants: $assistants, quota: $quota, isFull: $isFull, participants: $participants)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClassEntityImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.startAt, startAt) || other.startAt == startAt) &&
            (identical(other.endAt, endAt) || other.endAt == endAt) &&
            const DeepCollectionEquality()
                .equals(other._assistants, _assistants) &&
            (identical(other.quota, quota) || other.quota == quota) &&
            (identical(other.isFull, isFull) || other.isFull == isFull) &&
            const DeepCollectionEquality()
                .equals(other._participants, _participants));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      day,
      startAt,
      endAt,
      const DeepCollectionEquality().hash(_assistants),
      quota,
      isFull,
      const DeepCollectionEquality().hash(_participants));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClassEntityImplCopyWith<_$ClassEntityImpl> get copyWith =>
      __$$ClassEntityImplCopyWithImpl<_$ClassEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClassEntityImplToJson(
      this,
    );
  }
}

abstract class _ClassEntity implements ClassEntity {
  const factory _ClassEntity(
      {final String? name,
      final String? day,
      final String? startAt,
      final String? endAt,
      final List<dynamic>? assistants,
      final int? quota,
      final bool? isFull,
      final List<dynamic>? participants}) = _$ClassEntityImpl;

  factory _ClassEntity.fromJson(Map<String, dynamic> json) =
      _$ClassEntityImpl.fromJson;

  @override
  String? get name;
  @override
  String? get day;
  @override
  String? get startAt;
  @override
  String? get endAt;
  @override
  List<dynamic>? get assistants;
  @override
  int? get quota;
  @override
  bool? get isFull;
  @override
  List<dynamic>? get participants;
  @override
  @JsonKey(ignore: true)
  _$$ClassEntityImplCopyWith<_$ClassEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
