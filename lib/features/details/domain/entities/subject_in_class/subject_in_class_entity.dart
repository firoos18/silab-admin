import 'package:freezed_annotation/freezed_annotation.dart';

part 'subject_in_class_entity.freezed.dart';
part 'subject_in_class_entity.g.dart';

@freezed
class SubjectInClassEntity with _$SubjectInClassEntity {
  const factory SubjectInClassEntity({
    String? id,
    String? name,
    String? lecturer,
    List<String>? classes,
  }) = _SubjectInClassEntity;

  factory SubjectInClassEntity.fromJson(Map<String, dynamic> json) =>
      _$SubjectInClassEntityFromJson(json);
}
