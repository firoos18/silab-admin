import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:silab_admin/features/subjects/domain/entities/subject/subject_entity.dart';

part 'add_class_response_entity.freezed.dart';
part 'add_class_response_entity.g.dart';

@freezed
class AddClassResponseEntity with _$AddClassResponseEntity {
  const factory AddClassResponseEntity({
    int? status,
    String? message,
    SubjectEntity? data,
  }) = _AddClassResponseEntity;

  factory AddClassResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$AddClassResponseEntityFromJson(json);
}
