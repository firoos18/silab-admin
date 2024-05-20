// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_class_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateClassModel _$UpdateClassModelFromJson(Map<String, dynamic> json) =>
    UpdateClassModel(
      day: json['day'] as String?,
      endAt: json['endAt'] as String?,
      name: json['name'] as String?,
      quota: (json['quota'] as num?)?.toInt(),
      startAt: json['startAt'] as String?,
      subjectId: json['subjectId'] as String?,
    );

Map<String, dynamic> _$UpdateClassModelToJson(UpdateClassModel instance) =>
    <String, dynamic>{
      'subjectId': instance.subjectId,
      'name': instance.name,
      'day': instance.day,
      'startAt': instance.startAt,
      'endAt': instance.endAt,
      'quota': instance.quota,
    };
