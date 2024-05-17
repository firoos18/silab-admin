// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_subject_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddSubjectModel _$AddSubjectModelFromJson(Map<String, dynamic> json) =>
    AddSubjectModel(
      lecturer: json['lecturer'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$AddSubjectModelToJson(AddSubjectModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'lecturer': instance.lecturer,
    };
