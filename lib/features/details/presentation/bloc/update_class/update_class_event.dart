part of 'update_class_bloc.dart';

sealed class UpdateClassEvent extends Equatable {
  final String? id;
  final UpdateClassModel? updateData;

  const UpdateClassEvent({this.id, this.updateData});

  @override
  List<Object?> get props => [id, updateData];
}

final class UpdateClassButtonTapped extends UpdateClassEvent {
  const UpdateClassButtonTapped({super.id, super.updateData});
}
