import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:silab_admin/features/details/domain/entities/class/class_entity.dart';

part 'class_detail_response_entity.freezed.dart';
part 'class_detail_response_entity.g.dart';

@freezed
class ClassDetailResponseEntity with _$ClassDetailResponseEntity {
  const factory ClassDetailResponseEntity({
    int? status,
    String? message,
    ClassEntity? data,
  }) = _ClassDetailResponseEntity;

  factory ClassDetailResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$ClassDetailResponseEntityFromJson(json);
}
