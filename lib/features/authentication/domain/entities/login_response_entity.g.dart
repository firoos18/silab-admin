// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginResponseEntityImpl _$$LoginResponseEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$LoginResponseEntityImpl(
      fullname: json['fullname'] as String?,
      nim: json['nim'] as String?,
      token: json['token'] as String?,
    );

Map<String, dynamic> _$$LoginResponseEntityImplToJson(
        _$LoginResponseEntityImpl instance) =>
    <String, dynamic>{
      'fullname': instance.fullname,
      'nim': instance.nim,
      'token': instance.token,
    };
