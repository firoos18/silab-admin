import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:silab_admin/core/common/widgets/custom_snackbar.dart';
import 'package:silab_admin/features/add/data/models/add_subject_model/add_subject_model.dart';
import 'package:silab_admin/features/add/presentation/bloc/add_subject/add_subject_bloc.dart';
import 'package:silab_admin/features/add/presentation/widgets/subject_text_field.dart';
import 'package:silab_admin/features/classes/presentation/bloc/classes_bloc.dart';

class SubjectTab extends StatefulWidget {
  const SubjectTab({super.key});

  @override
  State<SubjectTab> createState() => _SubjectTabState();
}

class _SubjectTabState extends State<SubjectTab> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _lecturerController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        children: [
          SubjectTextField(
            field: SubjectField.name,
            nameController: _nameController,
          ),
          const SizedBox(height: 8),
          SubjectTextField(
            field: SubjectField.lecturer,
            lecturerController: _lecturerController,
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              final newSubject = AddSubjectModel(
                lecturer: _lecturerController.text.trim(),
                name: _nameController.text.trim(),
              );

              context
                  .read<AddSubjectBloc>()
                  .add(AddSubjectButtonTapped(subjectModel: newSubject));
            },
            child: BlocConsumer<AddSubjectBloc, AddSubjectState>(
              listener: (context, state) {
                if (state is AddSubjectLoaded) {
                  showCustomSnackbar(
                    context,
                    state.message!,
                    SnackbarType.success,
                  );

                  context.read<ClassesBloc>().add(HomePageOpened());

                  Future.delayed(const Duration(seconds: 1)).then(
                    (value) => context.go('/home'),
                  );
                } else {
                  if (state is AddSubjectError) {
                    showCustomSnackbar(
                      context,
                      state.message!,
                      SnackbarType.error,
                    );
                  }
                }
              },
              builder: (context, state) {
                if (state is AddSubjectLoading) {
                  return const CupertinoActivityIndicator();
                }

                return const Text("Add Subject");
              },
            ),
          )
        ],
      ),
    );
  }
}
