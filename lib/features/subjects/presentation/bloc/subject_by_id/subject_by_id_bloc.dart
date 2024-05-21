import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:silab_admin/features/subjects/domain/entities/subject/subject_entity.dart';
import 'package:silab_admin/features/subjects/domain/usecases/get_subject_by_id_usecase.dart';

part 'subject_by_id_event.dart';
part 'subject_by_id_state.dart';

class SubjectByIdBloc extends Bloc<SubjectByIdEvent, SubjectByIdState> {
  final GetSubjectByIdUseCase _getSubjectByIdUseCase;

  SubjectByIdBloc(this._getSubjectByIdUseCase) : super(SubjectByIdInitial()) {
    on<GetSubjectById>(onGetSubjectById);
  }

  void onGetSubjectById(
    SubjectByIdEvent event,
    Emitter<SubjectByIdState> emit,
  ) async {
    emit(SubjectByIdLoading());

    final data =
        await _getSubjectByIdUseCase.subjectRepository.getSubjectById(event.id);

    data.fold(
      (left) => emit(SubjectByIdError(message: left.message)),
      (right) => emit(SubjectByIdLoaded(subjectEntity: right.data)),
    );
  }
}
