import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_class_model.g.dart';

@JsonSerializable()
class AddClassModel {
  final String subjectId;
  final String name;
  final String day;
  final String startAt;
  final String endAt;
  final int quota;

  const AddClassModel({
    required this.subjectId,
    required this.name,
    required this.day,
    required this.endAt,
    required this.quota,
    required this.startAt,
  });

  Map<String, dynamic> toJson() => _$AddClassModelToJson(this);
}
