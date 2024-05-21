import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silab_admin/features/subjects/presentation/bloc/all_subjects/subject_bloc.dart';
import 'package:silab_admin/features/subjects/presentation/widgets/class_card.dart';

class SubjectListView extends StatelessWidget {
  const SubjectListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SubjectBloc, SubjectState>(
      builder: (context, state) {
        if (state is SubjectLoading) {
          return const Center(
            child: CupertinoActivityIndicator(),
          );
        } else if (state is SubjectLoaded) {
          return RefreshIndicator(
            onRefresh: () async {
              context.read<SubjectBloc>().add(GetAllSubjects());
            },
            child: ListView.builder(
              itemCount: state.subjectList!.length,
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  margin: const EdgeInsets.only(bottom: 8),
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    border: Border.all(
                      width: 0.5,
                      color: Colors.black54,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        state.subjectList![index].name!,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        state.subjectList![index].lecturer!,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      const SizedBox(height: 24),
                      const Text("Classes"),
                      const SizedBox(height: 4),
                      if (state.subjectList![index].classes!.isNotEmpty)
                        for (var classRoom
                            in state.subjectList![index].classes!)
                          ClassCard(
                            id: classRoom.id,
                            className: classRoom.name,
                            quota: classRoom.quota,
                            participants: classRoom.participants!.length,
                            day: classRoom.day,
                            startAt: classRoom.startAt,
                            endAt: classRoom.endAt,
                          )
                      else
                        const Text("No Class Added Yet")
                    ],
                  ),
                );
              },
            ),
          );
        } else {
          return const SizedBox();
        }
      },
    );
  }
}
