// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subject_in_class_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubjectInClassEntityImpl _$$SubjectInClassEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$SubjectInClassEntityImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      lecturer: json['lecturer'] as String?,
      classes:
          (json['classes'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$SubjectInClassEntityImplToJson(
        _$SubjectInClassEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'lecturer': instance.lecturer,
      'classes': instance.classes,
    };
