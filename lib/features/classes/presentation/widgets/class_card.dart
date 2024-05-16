import 'package:flutter/widgets.dart';
import 'package:silab_admin/features/classes/domain/entities/class_entity.dart';

class ClassCard extends StatelessWidget {
  final ClassEntity classData;

  const ClassCard({
    super.key,
    required this.classData,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                classData.name!,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text("${classData.participants!.length} / ${classData.quota}")
            ],
          ),
          Text(
            "${classData.day}, ${classData.startAt} - ${classData.endAt}",
          )
        ],
      ),
    );
  }
}