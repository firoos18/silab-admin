import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silab_admin/core/common/widgets/custom_loading_indicator.dart';
import 'package:silab_admin/core/common/widgets/custom_snackbar.dart';
import 'package:silab_admin/features/details/presentation/bloc/class_detail_bloc.dart';

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
    return BlocConsumer<ClassDetailBloc, ClassDetailState>(
      listener: (context, state) {
        if (state is ClassDetailLoading) {
          showDialog(
            context: context,
            builder: (context) => const Center(
              child: CustomLoadingIndicator(),
            ),
          );
        } else if (state is ClassDetailLoaded) {
          Navigator.of(context, rootNavigator: true).pop();
        } else if (state is ClassDetailError) {
          showCustomSnackbar(context, state.message!, SnackbarType.error);
        }
      },
      builder: (context, state) {
        if (state is ClassDetailLoaded) {
          return Scaffold(
            appBar: AppBar(
              title: Text(state.classEntity!.name!),
            ),
            body: Center(
              child: Text(state.classEntity!.name!),
            ),
          );
        }

        return const SizedBox();
      },
    );
  }
}
