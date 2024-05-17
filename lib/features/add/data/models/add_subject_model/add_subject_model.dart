import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_subject_model.g.dart';

@JsonSerializable()
class AddSubjectModel {
  final String name;
  final String lecturer;

  const AddSubjectModel({required this.lecturer, required this.name});

  Map<String, dynamic> toJson() => _$AddSubjectModelToJson(this);
}
