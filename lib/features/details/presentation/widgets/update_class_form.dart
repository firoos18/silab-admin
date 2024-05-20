import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:silab_admin/core/common/entities/class_entity.dart';
import 'package:silab_admin/core/common/widgets/custom_snackbar.dart';
import 'package:silab_admin/features/add/presentation/widgets/class_text_field.dart';
import 'package:silab_admin/features/add/presentation/widgets/day_dropdown_menu.dart';
import 'package:silab_admin/features/add/presentation/widgets/time_picker_field.dart';
import 'package:silab_admin/features/details/data/models/update_class_model.dart';
import 'package:silab_admin/features/details/presentation/bloc/class_detail/class_detail_bloc.dart';
import 'package:silab_admin/features/details/presentation/bloc/update_class/update_class_bloc.dart';
import 'package:silab_admin/features/subjects/presentation/bloc/all_subjects/subject_bloc.dart';
import 'package:silab_admin/features/subjects/presentation/widgets/subject_dropdown_menu.dart';

class UpdateClassForm extends StatefulWidget {
  final String? id;
  final ClassEntity classData;
  const UpdateClassForm({
    super.key,
    required this.id,
    required this.classData,
  });

  @override
  State<UpdateClassForm> createState() => _UpdateClassFormState();
}

class _UpdateClassFormState extends State<UpdateClassForm> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _quotaController = TextEditingController();
  final TextEditingController _startAtController = TextEditingController();
  final TextEditingController _endAtController = TextEditingController();
  String? selectedSubject;
  String? initialSubject;
  String? selectedDay;
  int? quota;

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
  void initState() {
    context.read<SubjectBloc>().add(GetAllSubjects());
    setState(() {
      _nameController.text = widget.classData.name!;
      _quotaController.text = widget.classData.quota.toString();
      _endAtController.text = widget.classData.endAt!;
      _startAtController.text = widget.classData.startAt!;
    });
    handleDayDropdownMenuChanged(widget.classData.day);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SubjectBloc, SubjectState>(
      listener: (context, state) {
        if (state is SubjectLoaded) {
          for (var subject in state.subjectList!) {
            if (subject.id == widget.classData.subjectId) {
              setState(() {
                initialSubject = subject.id;
              });
            }
          }
        }
      },
      builder: (context, state) {
        if (state is SubjectLoading) {
          return const SizedBox(
            height: 150,
            child: CupertinoActivityIndicator(),
          );
        } else if (state is SubjectLoaded) {
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Update Class Data",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16),
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
                          onChanged: handleSubjectDropdownMenuChanged,
                          initialValue: initialSubject,
                        );
                      }
                    }

                    return const SizedBox();
                  },
                ),
                const SizedBox(height: 8),
                DayDropdownMenu(
                  onChanged: handleDayDropdownMenuChanged,
                  initialValue: widget.classData.day,
                ),
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
                    if (_quotaController.text.isNotEmpty) {
                      setState(() {
                        quota = int.parse(_quotaController.text.trim());
                      });
                    }

                    final newClass = UpdateClassModel(
                      subjectId: selectedSubject ?? initialSubject,
                      name: _nameController.text.trim(),
                      quota: quota,
                      day: selectedDay,
                      startAt: _startAtController.text.trim(),
                      endAt: _endAtController.text.trim(),
                    );

                    context.read<UpdateClassBloc>().add(UpdateClassButtonTapped(
                        id: widget.id, updateData: newClass));
                  },
                  child: BlocConsumer<UpdateClassBloc, UpdateClassState>(
                    listener: (context, state) {
                      if (state is UpdateClassError) {
                        showCustomSnackbar(
                          context,
                          state.message!,
                          SnackbarType.error,
                        );
                      } else if (state is UpdateClassLoaded) {
                        context
                            .read<ClassDetailBloc>()
                            .add(GetClassDetails(id: widget.id));

                        showCustomSnackbar(
                          context,
                          "Class Updated",
                          SnackbarType.success,
                        );

                        Navigator.pop(context);
                      }
                    },
                    builder: (context, state) {
                      if (state is UpdateClassLoading) {
                        return const CupertinoActivityIndicator();
                      }

                      return const Text("Update Class");
                    },
                  ),
                ),
              ],
            ),
          );
        } else {
          return const SizedBox();
        }
      },
    );
  }
}
