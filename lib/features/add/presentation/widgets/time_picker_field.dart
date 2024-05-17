import 'package:flutter/material.dart';

enum Time { startAt, endAt }

class TimePickerField extends StatefulWidget {
  final Time time;
  final TextEditingController? startAtController;
  final TextEditingController? endAtController;

  const TimePickerField({
    super.key,
    required this.time,
    this.endAtController,
    this.startAtController,
  });

  @override
  State<TimePickerField> createState() => _TimePickerFieldState();
}

class _TimePickerFieldState extends State<TimePickerField> {
  late TimeOfDay picked;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.time == Time.startAt
          ? widget.startAtController
          : widget.endAtController,
      readOnly: true,
      decoration: InputDecoration(
        hintText: widget.time == Time.startAt ? "Start At" : "End At",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        suffixIcon: IconButton(
            onPressed: () async {
              final pickedTime = await showTimePicker(
                context: context,
                initialTime: TimeOfDay.now(),
              );

              if (pickedTime != null) {
                if (context.mounted) {
                  if (widget.time == Time.startAt) {
                    widget.startAtController!.text = pickedTime.format(context);
                  } else {
                    widget.endAtController!.text = pickedTime.format(context);
                  }
                }
              }
            },
            icon: const Icon(Icons.timer)),
      ),
    );
  }
}
