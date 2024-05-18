import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:silab_admin/features/subjects/domain/entities/classes_in_subject_entity.dart';

part 'subject_entity.freezed.dart';
part 'subject_entity.g.dart';

@freezed
class SubjectEntity with _$SubjectEntity {
  const factory SubjectEntity({
    String? id,
    String? name,
    String? lecturer,
    List<ClassesInSubjectEntity>? classes,
  }) = _SubjectEntity;

  factory SubjectEntity.fromJson(Map<String, dynamic> json) =>
      _$SubjectEntityFromJson(json);
}
