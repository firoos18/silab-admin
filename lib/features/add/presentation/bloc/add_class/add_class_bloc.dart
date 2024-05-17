import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silab_admin/features/add/data/models/add_class_model/add_class_model.dart';
import 'package:silab_admin/features/add/domain/usecases/add_class_usecase.dart';
import 'package:silab_admin/features/subjects/domain/entities/subject_entity.dart';

part 'add_class_event.dart';
part 'add_class_state.dart';

class AddClassBloc extends Bloc<AddClassEvent, AddClassState> {
  final AddClassUseCase _addClassUseCase;

  AddClassBloc(this._addClassUseCase) : super(AddClassInitial()) {
    on<AddClassButtonTapped>(onAddClassButtonTapped);
  }

  void onAddClassButtonTapped(
      AddClassEvent event, Emitter<AddClassState> emit) async {
    emit(AddClassLoading());

    if (event.classModel != null) {
      final data =
          await _addClassUseCase.addClassRepository.addClass(event.classModel!);

      data!.fold(
        (left) => emit(AddClassError(message: left.message)),
        (right) => emit(AddClassLoaded(subjectRelated: data.right.data)),
      );
    } else {
      emit(const AddClassError(message: "Please Provide Data."));
    }
  }
}
