import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silab_admin/features/subjects/presentation/bloc/all_subjects/subject_bloc.dart';
import 'package:silab_admin/features/subjects/presentation/widgets/subject_list_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    context.read<SubjectBloc>().add(GetAllSubjects());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: SubjectListView(),
      ),
    );
  }
}
