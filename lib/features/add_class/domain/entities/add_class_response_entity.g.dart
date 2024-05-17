// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_class_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddClassResponseEntityImpl _$$AddClassResponseEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$AddClassResponseEntityImpl(
      status: (json['status'] as num?)?.toInt(),
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : SubjectEntity.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AddClassResponseEntityImplToJson(
        _$AddClassResponseEntityImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
