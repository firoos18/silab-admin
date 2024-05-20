import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_class_model.g.dart';

@JsonSerializable()
class UpdateClassModel {
  final String? subjectId;
  final String? name;
  final String? day;
  final String? startAt;
  final String? endAt;
  final int? quota;

  const UpdateClassModel({
    this.day,
    this.endAt,
    this.name,
    this.quota,
    this.startAt,
    this.subjectId,
  });

  Map<String, dynamic> toJson() => _$UpdateClassModelToJson(this);
}
