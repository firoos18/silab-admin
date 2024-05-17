import 'package:flutter/material.dart';

enum ClassFields {
  name,
  quota,
}

class ClassTextField extends StatefulWidget {
  final ClassFields fields;
  final TextEditingController? nameController;
  final TextEditingController? quotaController;

  const ClassTextField(
      {super.key,
      required this.fields,
      this.nameController,
      this.quotaController});

  @override
  State<ClassTextField> createState() => _ClassTextFieldState();
}

class _ClassTextFieldState extends State<ClassTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.fields == ClassFields.name
          ? widget.nameController
          : widget.quotaController,
      keyboardType: widget.fields == ClassFields.name
          ? TextInputType.text
          : TextInputType.number,
      textInputAction: widget.fields == ClassFields.name
          ? TextInputAction.next
          : TextInputAction.done,
      decoration: InputDecoration(
        hintText:
            widget.fields == ClassFields.name ? "Class Name" : "Class Quota",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
