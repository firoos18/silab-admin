import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silab_admin/features/classes/presentation/bloc/classes_bloc.dart';
import 'package:silab_admin/features/classes/presentation/widgets/class_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    context.read<ClassesBloc>().add(HomePageOpened());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: BlocBuilder<ClassesBloc, ClassesState>(
          builder: (context, state) {
            if (state is ClassesLoaded) {
              return RefreshIndicator.adaptive(
                onRefresh: () async {
                  context.read<ClassesBloc>().add(HomePageOpened());
                },
                child: ListView.builder(
                  itemCount: state.classList!.length,
                  itemBuilder: (context, index) => ClassCard(
                    classData: state.classList![index],
                  ),
                ),
              );
            } else if (state is ClassesError) {
              return Center(
                child: Text(state.message ?? "An Error Occurred."),
              );
            } else if (state is ClassesLoading) {
              return const Center(
                child: CupertinoActivityIndicator(),
              );
            }
            return const SizedBox();
          },
        ),
      ),
    );
  }
}
