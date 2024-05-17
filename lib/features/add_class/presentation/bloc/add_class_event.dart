part of 'add_class_bloc.dart';

sealed class AddClassEvent extends Equatable {
  final AddClassModel? classModel;

  const AddClassEvent({this.classModel});

  @override
  List<Object?> get props => [classModel];
}

final class AddClassButtonTapped extends AddClassEvent {
  const AddClassButtonTapped({super.classModel});
}
