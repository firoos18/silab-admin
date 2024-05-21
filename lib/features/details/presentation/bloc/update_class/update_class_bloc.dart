import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silab_admin/features/details/domain/entities/class/class_entity.dart';
import 'package:silab_admin/features/details/data/models/update_class_model.dart';
import 'package:silab_admin/features/details/domain/usecases/update_class_usecase.dart';

part 'update_class_event.dart';
part 'update_class_state.dart';

class UpdateClassBloc extends Bloc<UpdateClassEvent, UpdateClassState> {
  final UpdateClassUseCase _updateClassUseCase;

  UpdateClassBloc(this._updateClassUseCase) : super(UpdateClassInitial()) {
    on<UpdateClassButtonTapped>(onUpdateClassButtonTapped);
  }

  void onUpdateClassButtonTapped(
      UpdateClassEvent event, Emitter<UpdateClassState> emit) async {
    emit(UpdateClassLoading());

    final data = await _updateClassUseCase.classDetailRepository.updateClass(
      event.id,
      event.updateData!,
    );

    data.fold(
      (left) => emit(UpdateClassError(message: left.message)),
      (right) => emit(UpdateClassLoaded(classEntity: data.right.data)),
    );
  }
}
