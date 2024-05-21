import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ClassCard extends StatelessWidget {
  final String? id;
  final String? className;
  final int? quota;
  final int? participants;
  final String? day;
  final String? startAt;
  final String? endAt;

  const ClassCard({
    super.key,
    this.id,
    this.className,
    this.quota,
    this.participants,
    this.day,
    this.endAt,
    this.startAt,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.goNamed('details', pathParameters: {"id": id!});
      },
      child: Container(
        height: 72,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        margin: const EdgeInsets.only(bottom: 4),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black54,
            width: 0.5,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  className!,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.calendar_today,
                      size: 12,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      "$day, $startAt - $endAt",
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Text("$participants/$quota"),
          ],
        ),
      ),
    );
  }
}
