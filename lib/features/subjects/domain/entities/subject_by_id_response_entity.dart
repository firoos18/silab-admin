import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:silab_admin/features/subjects/domain/entities/subject_entity.dart';

part 'subject_by_id_response_entity.freezed.dart';
part 'subject_by_id_response_entity.g.dart';

@freezed
class SubjectByIdResponseEntity with _$SubjectByIdResponseEntity {
  const factory SubjectByIdResponseEntity({
    int? status,
    String? message,
    SubjectEntity? data,
  }) = _SubjectByIdResponseEntity;

  factory SubjectByIdResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$SubjectByIdResponseEntityFromJson(json);
}
