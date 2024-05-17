import 'package:freezed_annotation/freezed_annotation.dart';

part 'class_entity.freezed.dart';
part 'class_entity.g.dart';

@freezed
class ClassEntity with _$ClassEntity {
  const factory ClassEntity({
    String? subjectId,
    String? name,
    String? day,
    String? startAt,
    String? endAt,
    List<dynamic>? assistants,
    int? quota,
    bool? isFull,
    List<dynamic>? participants,
  }) = _ClassEntity;

  factory ClassEntity.fromJson(Map<String, dynamic> json) =>
      _$ClassEntityFromJson(json);
}
