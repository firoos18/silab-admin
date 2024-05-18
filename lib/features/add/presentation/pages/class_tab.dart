import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:silab_admin/core/common/widgets/custom_snackbar.dart';
import 'package:silab_admin/features/add/data/models/add_class_model/add_class_model.dart';
import 'package:silab_admin/features/add/presentation/bloc/add_class/add_class_bloc.dart';
import 'package:silab_admin/features/add/presentation/widgets/class_text_field.dart';
import 'package:silab_admin/features/add/presentation/widgets/day_dropdown_menu.dart';
import 'package:silab_admin/features/add/presentation/widgets/time_picker_field.dart';
import 'package:silab_admin/features/classes/presentation/bloc/classes_bloc.dart';
import 'package:silab_admin/features/subjects/presentation/bloc/all_subjects/subject_bloc.dart';
import 'package:silab_admin/features/subjects/presentation/widgets/subject_dropdown_menu.dart';

class ClassTab extends StatefulWidget {
  const ClassTab({super.key});

  @override
  State<ClassTab> createState() => _ClassTabState();
}

class _ClassTabState extends State<ClassTab> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _quotaController = TextEditingController();
  final TextEditingController _startAtController = TextEditingController();
  final TextEditingController _endAtController = TextEditingController();
  String? selectedSubject;
  String? selectedDay;

  void handleSubjectDropdownMenuChanged(String? newValue) {
    setState(() {
      selectedSubject = newValue;
    });
  }

  void handleDayDropdownMenuChanged(String? newValue) {
    setState(() {
      selectedDay = newValue;
    });
  }

  @override
  void dispose() {
    _quotaController.dispose();
    _startAtController.dispose();
    _endAtController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      child: Column(
        children: [
          ClassTextField(
            fields: ClassFields.name,
            nameController: _nameController,
          ),
          const SizedBox(height: 8),
          ClassTextField(
            fields: ClassFields.quota,
            quotaController: _quotaController,
          ),
          const SizedBox(height: 8),
          BlocBuilder<SubjectBloc, SubjectState>(
            builder: (context, state) {
              if (state is SubjectLoaded) {
                if (state.subjectList != null) {
                  return SubjectDropdownMenu(
                      subjectList: state.subjectList!,
                      onChanged: handleSubjectDropdownMenuChanged);
                }
              }

              return const SizedBox();
            },
          ),
          const SizedBox(height: 8),
          DayDropdownMenu(onChanged: handleDayDropdownMenuChanged),
          const SizedBox(height: 8),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                child: TimePickerField(
                  time: Time.startAt,
                  startAtController: _startAtController,
                ),
              ),
              const SizedBox(width: 8),
              Flexible(
                child: TimePickerField(
                  time: Time.endAt,
                  endAtController: _endAtController,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              final quota = int.parse(_quotaController.text.trim());

              final newClass = AddClassModel(
                subjectId: selectedSubject!,
                name: _nameController.text.trim(),
                quota: quota,
                day: selectedDay!,
                startAt: _startAtController.text.trim(),
                endAt: _endAtController.text.trim(),
              );

              context
                  .read<AddClassBloc>()
                  .add(AddClassButtonTapped(classModel: newClass));
            },
            child: BlocConsumer<AddClassBloc, AddClassState>(
              listener: (context, state) {
                if (state is AddClassError) {
                  showCustomSnackbar(
                    context,
                    state.message!,
                    SnackbarType.error,
                  );
                } else if (state is AddClassLoaded) {
                  showCustomSnackbar(
                    context,
                    "Class Added",
                    SnackbarType.success,
                  );
                  context.read<ClassesBloc>().add(HomePageOpened());
                  context.go('/home');
                }
              },
              builder: (context, state) {
                if (state is AddClassLoading) {
                  return const CupertinoActivityIndicator();
                }

                return const Text("Add Class");
              },
            ),
          ),
        ],
      ),
    );
  }
}
