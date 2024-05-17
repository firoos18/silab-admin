import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silab_admin/core/common/entities/class_entity.dart';
import 'package:silab_admin/features/classes/domain/usecases/get_all_classes_usecase.dart';

part 'classes_event.dart';
part 'classes_state.dart';

class ClassesBloc extends Bloc<ClassesEvent, ClassesState> {
  final GetAllClassesUseCase _getAllClassesUseCase;

  ClassesBloc(this._getAllClassesUseCase) : super(ClassesInitial()) {
    on<HomePageOpened>(onHomePageOpened);
  }

  void onHomePageOpened(ClassesEvent event, Emitter<ClassesState> emit) async {
    emit(ClassesLoading());

    final classData =
        await _getAllClassesUseCase.classRepository.getAllClasses();

    classData.fold(
      (left) => emit(ClassesError(message: left.message)),
      (right) => emit(ClassesLoaded(classList: classData.right.data)),
    );
  }
}
