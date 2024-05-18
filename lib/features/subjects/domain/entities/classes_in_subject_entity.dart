import 'package:freezed_annotation/freezed_annotation.dart';

part 'classes_in_subject_entity.freezed.dart';
part 'classes_in_subject_entity.g.dart';

@freezed
class ClassesInSubjectEntity with _$ClassesInSubjectEntity {
  const factory ClassesInSubjectEntity({
    String? id,
    String? name,
  }) = _ClassesInSubjectEntity;

  factory ClassesInSubjectEntity.fromJson(Map<String, dynamic> json) =>
      _$ClassesInSubjectEntityFromJson(json);
}
