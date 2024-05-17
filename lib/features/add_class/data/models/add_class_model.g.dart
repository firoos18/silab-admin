// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_class_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddClassModel _$AddClassModelFromJson(Map<String, dynamic> json) =>
    AddClassModel(
      subjectId: json['subjectId'] as String,
      name: json['name'] as String,
      day: json['day'] as String,
      endAt: json['endAt'] as String,
      quota: (json['quota'] as num).toInt(),
      startAt: json['startAt'] as String,
    );

Map<String, dynamic> _$AddClassModelToJson(AddClassModel instance) =>
    <String, dynamic>{
      'subjectId': instance.subjectId,
      'name': instance.name,
      'day': instance.day,
      'startAt': instance.startAt,
      'endAt': instance.endAt,
      'quota': instance.quota,
    };
