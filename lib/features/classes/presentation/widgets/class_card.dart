import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:silab_admin/core/common/entities/class_entity.dart';
import 'package:silab_admin/features/subjects/presentation/bloc/subject_by_id/subject_by_id_bloc.dart';

class ClassCard extends StatelessWidget {
  final ClassEntity classData;

  const ClassCard({
    super.key,
    required this.classData,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context
            .read<SubjectByIdBloc>()
            .add(GetSubjectById(id: classData.subjectId));
        context.goNamed('details', pathParameters: {'id': classData.id!});
      },
      child: Container(
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
      ),
    );
  }
}
