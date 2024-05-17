import 'package:flutter/material.dart';

List<String> days = [
  "Monday",
  "Tuesday",
  "Wednesday",
  "Thursday",
  "Friday",
  "Saturday",
];

class DayDropdownMenu extends StatefulWidget {
  final ValueChanged<String?> onChanged;
  final String? initialValue;

  const DayDropdownMenu({
    super.key,
    required this.onChanged,
    this.initialValue,
  });

  @override
  State<DayDropdownMenu> createState() => _DayDropdownMenuState();
}

class _DayDropdownMenuState extends State<DayDropdownMenu> {
  String? selectedDay;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      value: selectedDay,
      items: days
          .map(
            (day) => DropdownMenuItem(value: day, child: Text(day)),
          )
          .toList(),
      onChanged: (newValue) {
        setState(() {
          selectedDay = newValue;
        });
        widget.onChanged(newValue);
      },
      decoration: InputDecoration(
        hintText: "Select Day",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
