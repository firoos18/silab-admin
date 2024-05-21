import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:silab_admin/features/subjects/domain/entities/subject/subject_entity.dart';

part 'subjects_response_entity.freezed.dart';
part 'subjects_response_entity.g.dart';

@freezed
class SubjectsResponseEntity with _$SubjectsResponseEntity {
  const factory SubjectsResponseEntity({
    int? status,
    String? message,
    List<SubjectEntity>? data,
  }) = _SubjectsResponseEntity;

  factory SubjectsResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$SubjectsResponseEntityFromJson(json);
}
