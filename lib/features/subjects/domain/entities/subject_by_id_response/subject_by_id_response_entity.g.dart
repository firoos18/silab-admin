// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subject_by_id_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubjectByIdResponseEntityImpl _$$SubjectByIdResponseEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$SubjectByIdResponseEntityImpl(
      status: (json['status'] as num?)?.toInt(),
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : SubjectEntity.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SubjectByIdResponseEntityImplToJson(
        _$SubjectByIdResponseEntityImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
