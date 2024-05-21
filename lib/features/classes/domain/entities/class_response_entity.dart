import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:silab_admin/features/details/domain/entities/class/class_entity.dart';

part 'class_response_entity.freezed.dart';
part 'class_response_entity.g.dart';

@freezed
class ClassResponseEntity with _$ClassResponseEntity {
  const factory ClassResponseEntity({
    int? status,
    String? message,
    List<ClassEntity>? data,
  }) = _ClassResponseEntity;

  factory ClassResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$ClassResponseEntityFromJson(json);
}
