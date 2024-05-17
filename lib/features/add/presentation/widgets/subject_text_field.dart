import 'package:flutter/material.dart';

enum SubjectField { name, lecturer }

class SubjectTextField extends StatefulWidget {
  final SubjectField field;
  final TextEditingController? nameController;
  final TextEditingController? lecturerController;

  const SubjectTextField({
    super.key,
    required this.field,
    this.lecturerController,
    this.nameController,
  });

  @override
  State<SubjectTextField> createState() => _SubjectTextFieldState();
}

class _SubjectTextFieldState extends State<SubjectTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.field == SubjectField.name
          ? widget.nameController
          : widget.lecturerController,
      decoration: InputDecoration(
        hintText: widget.field == SubjectField.name
            ? "Subject Name"
            : "Lecturer Name",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
