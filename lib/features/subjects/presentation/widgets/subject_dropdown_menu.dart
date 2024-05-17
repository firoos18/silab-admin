import 'package:flutter/material.dart';
import 'package:silab_admin/features/subjects/domain/entities/subject_entity.dart';

class SubjectDropdownMenu extends StatefulWidget {
  final List<SubjectEntity> subjectList;
  final ValueChanged<String?> onChanged;
  final String? initialValue;

  const SubjectDropdownMenu({
    super.key,
    required this.subjectList,
    required this.onChanged,
    this.initialValue,
  });

  @override
  State<SubjectDropdownMenu> createState() => _SubjectDropdownMenuState();
}

class _SubjectDropdownMenuState extends State<SubjectDropdownMenu> {
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      value: selectedValue,
      items: widget.subjectList
          .map(
            (e) => DropdownMenuItem(
              value: e.id!,
              child: Text(e.name!),
            ),
          )
          .toList(),
      onChanged: (newValue) {
        setState(() {
          selectedValue = newValue;
        });
        widget.onChanged(newValue);
      },
      decoration: InputDecoration(
        hintText: "Select Subject",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
