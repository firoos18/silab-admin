// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'class_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClassResponseEntityImpl _$$ClassResponseEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$ClassResponseEntityImpl(
      status: (json['status'] as num?)?.toInt(),
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => ClassEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ClassResponseEntityImplToJson(
        _$ClassResponseEntityImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
