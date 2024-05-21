import 'package:freezed_annotation/freezed_annotation.dart';

part 'classes_in_subject_entity.freezed.dart';
part 'classes_in_subject_entity.g.dart';

@freezed
class ClassesInSubjectEntity with _$ClassesInSubjectEntity {
  const factory ClassesInSubjectEntity({
    String? id,
    String? subject,
    String? name,
    int? quota,
    bool? isFull,
    String? day,
    String? startAt,
    String? endAt,
    List<String>? participants,
    List<String>? learningModule,
  }) = _ClassesInSubjectEntity;

  factory ClassesInSubjectEntity.fromJson(Map<String, dynamic> json) =>
      _$ClassesInSubjectEntityFromJson(json);
}
