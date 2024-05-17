// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_subject_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddSubjectResponseEntityImpl _$$AddSubjectResponseEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$AddSubjectResponseEntityImpl(
      status: (json['status'] as num?)?.toInt(),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$AddSubjectResponseEntityImplToJson(
        _$AddSubjectResponseEntityImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };
