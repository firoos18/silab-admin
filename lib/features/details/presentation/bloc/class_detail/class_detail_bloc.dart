import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:silab_admin/core/common/entities/class_entity.dart';
import 'package:silab_admin/features/details/domain/usecases/get_class_details_usecase.dart';

part 'class_detail_event.dart';
part 'class_detail_state.dart';

class ClassDetailBloc extends Bloc<ClassDetailEvent, ClassDetailState> {
  final GetClassDetailsUseCase _getClassDetailsUseCase;

  ClassDetailBloc(this._getClassDetailsUseCase) : super(ClassDetailInitial()) {
    on<ClassDetailEvent>(onGetClassDetails);
  }

  void onGetClassDetails(
      ClassDetailEvent event, Emitter<ClassDetailState> emit) async {
    emit(ClassDetailLoading());

    final data = await _getClassDetailsUseCase.classDetailRepository
        .getClassDetail(event.id);

    data.fold(
      (left) => emit(ClassDetailError(message: left.message)),
      (right) => emit(ClassDetailLoaded(classEntity: data.right.data)),
    );
  }
}
