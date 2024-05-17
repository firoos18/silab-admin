// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subjects_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubjectsResponseEntityImpl _$$SubjectsResponseEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$SubjectsResponseEntityImpl(
      status: (json['status'] as num?)?.toInt(),
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => SubjectEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SubjectsResponseEntityImplToJson(
        _$SubjectsResponseEntityImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
