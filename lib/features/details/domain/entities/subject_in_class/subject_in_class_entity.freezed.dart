// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subject_in_class_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SubjectInClassEntity _$SubjectInClassEntityFromJson(Map<String, dynamic> json) {
  return _SubjectInClassEntity.fromJson(json);
}

/// @nodoc
mixin _$SubjectInClassEntity {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get lecturer => throw _privateConstructorUsedError;
  List<String>? get classes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubjectInClassEntityCopyWith<SubjectInClassEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubjectInClassEntityCopyWith<$Res> {
  factory $SubjectInClassEntityCopyWith(SubjectInClassEntity value,
          $Res Function(SubjectInClassEntity) then) =
      _$SubjectInClassEntityCopyWithImpl<$Res, SubjectInClassEntity>;
  @useResult
  $Res call(
      {String? id, String? name, String? lecturer, List<String>? classes});
}

/// @nodoc
class _$SubjectInClassEntityCopyWithImpl<$Res,
        $Val extends SubjectInClassEntity>
    implements $SubjectInClassEntityCopyWith<$Res> {
  _$SubjectInClassEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? lecturer = freezed,
    Object? classes = freezed,
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
      lecturer: freezed == lecturer
          ? _value.lecturer
          : lecturer // ignore: cast_nullable_to_non_nullable
              as String?,
      classes: freezed == classes
          ? _value.classes
          : classes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubjectInClassEntityImplCopyWith<$Res>
    implements $SubjectInClassEntityCopyWith<$Res> {
  factory _$$SubjectInClassEntityImplCopyWith(_$SubjectInClassEntityImpl value,
          $Res Function(_$SubjectInClassEntityImpl) then) =
      __$$SubjectInClassEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id, String? name, String? lecturer, List<String>? classes});
}

/// @nodoc
class __$$SubjectInClassEntityImplCopyWithImpl<$Res>
    extends _$SubjectInClassEntityCopyWithImpl<$Res, _$SubjectInClassEntityImpl>
    implements _$$SubjectInClassEntityImplCopyWith<$Res> {
  __$$SubjectInClassEntityImplCopyWithImpl(_$SubjectInClassEntityImpl _value,
      $Res Function(_$SubjectInClassEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? lecturer = freezed,
    Object? classes = freezed,
  }) {
    return _then(_$SubjectInClassEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      lecturer: freezed == lecturer
          ? _value.lecturer
          : lecturer // ignore: cast_nullable_to_non_nullable
              as String?,
      classes: freezed == classes
          ? _value._classes
          : classes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubjectInClassEntityImpl implements _SubjectInClassEntity {
  const _$SubjectInClassEntityImpl(
      {this.id, this.name, this.lecturer, final List<String>? classes})
      : _classes = classes;

  factory _$SubjectInClassEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubjectInClassEntityImplFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? lecturer;
  final List<String>? _classes;
  @override
  List<String>? get classes {
    final value = _classes;
    if (value == null) return null;
    if (_classes is EqualUnmodifiableListView) return _classes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SubjectInClassEntity(id: $id, name: $name, lecturer: $lecturer, classes: $classes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubjectInClassEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.lecturer, lecturer) ||
                other.lecturer == lecturer) &&
            const DeepCollectionEquality().equals(other._classes, _classes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, lecturer,
      const DeepCollectionEquality().hash(_classes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubjectInClassEntityImplCopyWith<_$SubjectInClassEntityImpl>
      get copyWith =>
          __$$SubjectInClassEntityImplCopyWithImpl<_$SubjectInClassEntityImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubjectInClassEntityImplToJson(
      this,
    );
  }
}

abstract class _SubjectInClassEntity implements SubjectInClassEntity {
  const factory _SubjectInClassEntity(
      {final String? id,
      final String? name,
      final String? lecturer,
      final List<String>? classes}) = _$SubjectInClassEntityImpl;

  factory _SubjectInClassEntity.fromJson(Map<String, dynamic> json) =
      _$SubjectInClassEntityImpl.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get lecturer;
  @override
  List<String>? get classes;
  @override
  @JsonKey(ignore: true)
  _$$SubjectInClassEntityImplCopyWith<_$SubjectInClassEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
