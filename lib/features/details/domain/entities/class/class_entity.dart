import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:silab_admin/features/details/domain/entities/class_participants/class_participants_entity.dart';
import 'package:silab_admin/features/details/domain/entities/subject_in_class/subject_in_class_entity.dart';

part 'class_entity.freezed.dart';
part 'class_entity.g.dart';

@freezed
class ClassEntity with _$ClassEntity {
  const factory ClassEntity({
    String? id,
    SubjectInClassEntity? subject,
    String? name,
    String? day,
    String? startAt,
    String? endAt,
    List<dynamic>? assistants,
    int? quota,
    bool? isFull,
    List<ClassParticipantsEntity>? participants,
  }) = _ClassEntity;

  factory ClassEntity.fromJson(Map<String, dynamic> json) =>
      _$ClassEntityFromJson(json);
}
