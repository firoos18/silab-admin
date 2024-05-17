import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silab_admin/features/add/data/models/add_subject_model/add_subject_model.dart';
import 'package:silab_admin/features/add/domain/usecases/add_subject_usecase.dart';

part 'add_subject_event.dart';
part 'add_subject_state.dart';

class AddSubjectBloc extends Bloc<AddSubjectEvent, AddSubjectState> {
  final AddSubjectUseCase _addSubjectUseCase;

  AddSubjectBloc(this._addSubjectUseCase) : super(AddSubjectInitial()) {
    on<AddSubjectButtonTapped>(onAddSubjectButtonTapped);
  }

  void onAddSubjectButtonTapped(
      AddSubjectEvent event, Emitter<AddSubjectState> emit) async {
    emit(AddSubjectLoading());

    final data = await _addSubjectUseCase.addSubjectRepository
        .addSubject(event.subjectModel);

    data.fold(
      (left) => emit(AddSubjectError(message: left.message)),
      (right) => emit(AddSubjectLoaded(message: right.message)),
    );
  }
}
