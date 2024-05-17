import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_subject_response_entity.freezed.dart';
part 'add_subject_response_entity.g.dart';

@freezed
class AddSubjectResponseEntity with _$AddSubjectResponseEntity {
  const factory AddSubjectResponseEntity({
    int? status,
    String? message,
  }) = _AddSubjectResponseEntity;

  factory AddSubjectResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$AddSubjectResponseEntityFromJson(json);
}
