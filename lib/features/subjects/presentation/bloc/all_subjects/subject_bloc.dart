import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silab_admin/features/subjects/domain/entities/subject_entity.dart';
import 'package:silab_admin/features/subjects/domain/usecases/get_all_subjects_usecase.dart';

part 'subject_event.dart';
part 'subject_state.dart';

class SubjectBloc extends Bloc<SubjectEvent, SubjectState> {
  final GetAllSubjectsUseCase _getAllSubjectsUseCase;

  SubjectBloc(this._getAllSubjectsUseCase) : super(SubjectInitial()) {
    on<GetAllSubjects>(onGetAllSubjects);
  }

  void onGetAllSubjects(SubjectEvent event, Emitter<SubjectState> emit) async {
    emit(SubjectLoading());

    final subjectData =
        await _getAllSubjectsUseCase.subjectRepository.getAllSubjects();

    subjectData.fold(
      (left) => emit(SubjectError(message: left.message)),
      (right) => emit(SubjectLoaded(subjectList: subjectData.right.data)),
    );
  }
}
