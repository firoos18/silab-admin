// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'class_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClassEntityImpl _$$ClassEntityImplFromJson(Map<String, dynamic> json) =>
    _$ClassEntityImpl(
      subjectId: json['subjectId'] as String?,
      name: json['name'] as String?,
      day: json['day'] as String?,
      startAt: json['startAt'] as String?,
      endAt: json['endAt'] as String?,
      assistants: json['assistants'] as List<dynamic>?,
      quota: (json['quota'] as num?)?.toInt(),
      isFull: json['isFull'] as bool?,
      participants: json['participants'] as List<dynamic>?,
    );

Map<String, dynamic> _$$ClassEntityImplToJson(_$ClassEntityImpl instance) =>
    <String, dynamic>{
      'subjectId': instance.subjectId,
      'name': instance.name,
      'day': instance.day,
      'startAt': instance.startAt,
      'endAt': instance.endAt,
      'assistants': instance.assistants,
      'quota': instance.quota,
      'isFull': instance.isFull,
      'participants': instance.participants,
    };
