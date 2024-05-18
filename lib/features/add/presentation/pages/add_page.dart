import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:silab_admin/core/common/widgets/custom_loading_indicator.dart';
import 'package:silab_admin/features/add/presentation/pages/class_tab.dart';
import 'package:silab_admin/features/add/presentation/pages/subject_tab.dart';
import 'package:silab_admin/features/subjects/presentation/bloc/all_subjects/subject_bloc.dart';

class AddPage extends StatefulWidget {
  const AddPage({super.key});

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    context.read<SubjectBloc>().add(GetAllSubjects());
    tabController = TabController(vsync: this, length: 2);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add a Subject / Class"),
        bottom: TabBar(
          controller: tabController,
          tabs: const [
            Tab(
              text: "Subject",
            ),
            Tab(
              text: "Class",
            ),
          ],
        ),
      ),
      body: BlocListener<SubjectBloc, SubjectState>(
        listener: (context, state) {
          if (state is SubjectLoading) {
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CustomLoadingIndicator(),
              ),
            );
          } else if (state is SubjectError) {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.message!)),
            );
          } else {
            context.pop();
          }
        },
        child: TabBarView(
          controller: tabController,
          children: const [
            SubjectTab(),
            ClassTab(),
          ],
        ),
      ),
    );
  }
}
