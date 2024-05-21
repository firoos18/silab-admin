// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'class_detail_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClassDetailResponseEntityImpl _$$ClassDetailResponseEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$ClassDetailResponseEntityImpl(
      status: (json['status'] as num?)?.toInt(),
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : ClassEntity.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ClassDetailResponseEntityImplToJson(
        _$ClassDetailResponseEntityImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
