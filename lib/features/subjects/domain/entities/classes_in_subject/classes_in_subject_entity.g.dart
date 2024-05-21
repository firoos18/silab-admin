// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'classes_in_subject_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClassesInSubjectEntityImpl _$$ClassesInSubjectEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$ClassesInSubjectEntityImpl(
      id: json['id'] as String?,
      subject: json['subject'] as String?,
      name: json['name'] as String?,
      quota: (json['quota'] as num?)?.toInt(),
      isFull: json['isFull'] as bool?,
      day: json['day'] as String?,
      startAt: json['startAt'] as String?,
      endAt: json['endAt'] as String?,
      participants: (json['participants'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      learningModule: (json['learningModule'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$ClassesInSubjectEntityImplToJson(
        _$ClassesInSubjectEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'subject': instance.subject,
      'name': instance.name,
      'quota': instance.quota,
      'isFull': instance.isFull,
      'day': instance.day,
      'startAt': instance.startAt,
      'endAt': instance.endAt,
      'participants': instance.participants,
      'learningModule': instance.learningModule,
    };
