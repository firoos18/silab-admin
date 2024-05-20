import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silab_admin/core/common/widgets/custom_snackbar.dart';
import 'package:silab_admin/features/details/presentation/bloc/class_detail/class_detail_bloc.dart';
import 'package:silab_admin/features/details/presentation/widgets/participant_card.dart';
import 'package:silab_admin/features/details/presentation/widgets/update_class_form.dart';
import 'package:silab_admin/features/subjects/presentation/bloc/subject_by_id/subject_by_id_bloc.dart';

class DetailPage extends StatefulWidget {
  final String id;

  const DetailPage({super.key, required this.id});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  void initState() {
    context.read<ClassDetailBloc>().add(GetClassDetails(id: widget.id));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
        listeners: [
          BlocListener<ClassDetailBloc, ClassDetailState>(
            listener: (context, state) {
              if (state is ClassDetailError) {
                showCustomSnackbar(context, state.message!, SnackbarType.error);
              }
            },
          ),
          BlocListener<SubjectByIdBloc, SubjectByIdState>(
            listener: (context, state) {
              if (state is SubjectByIdError) {
                showCustomSnackbar(context, state.message!, SnackbarType.error);
              }
            },
          )
        ],
        child: BlocBuilder<SubjectByIdBloc, SubjectByIdState>(
          builder: (context, state) {
            if (state is SubjectByIdLoading) {
              return const Center(
                child: CupertinoActivityIndicator(),
              );
            }

            if (state is SubjectByIdLoaded) {
              final subjectName = state.subjectEntity!.name;

              return BlocBuilder<ClassDetailBloc, ClassDetailState>(
                builder: (context, state) {
                  if (state is ClassDetailLoaded) {
                    return Scaffold(
                        appBar: AppBar(
                          title: Text(state.classEntity!.name!),
                          actions: [
                            IconButton(
                              onPressed: () {
                                showDialog(
                                  useRootNavigator: true,
                                  context: context,
                                  builder: (context) => Dialog(
                                    child: UpdateClassForm(
                                      id: widget.id,
                                      classData: state.classEntity!,
                                    ),
                                  ),
                                );
                              },
                              icon: const Icon(Icons.edit),
                            ),
                          ],
                        ),
                        body: RefreshIndicator(
                          onRefresh: () async {
                            context
                                .read<ClassDetailBloc>()
                                .add(GetClassDetails(id: widget.id));
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 8,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  state.classEntity!.name!,
                                  style: const TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  subjectName!,
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                const SizedBox(height: 24),
                                const Text(
                                  "Class Participants",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Expanded(
                                  child: ListView.builder(
                                    itemCount:
                                        state.classEntity!.participants!.length,
                                    itemBuilder: (context, index) {
                                      return ParticipantCard(
                                        fullname: state.classEntity!
                                            .participants![index].name!,
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ));
                  } else if (state is ClassDetailLoading) {
                    return const Center(
                      child: CupertinoActivityIndicator(),
                    );
                  } else {
                    return const SizedBox();
                  }
                },
              );
            } else {
              return const SizedBox();
            }
          },
        ));
  }
}
