part of 'add_class_bloc.dart';

sealed class AddClassState extends Equatable {
  final String? message;
  final SubjectEntity? subjectRelated;

  const AddClassState({this.message, this.subjectRelated});

  @override
  List<Object?> get props => [message, subjectRelated];
}

final class AddClassInitial extends AddClassState {}

final class AddClassLoading extends AddClassState {}

final class AddClassLoaded extends AddClassState {
  const AddClassLoaded({super.subjectRelated});
}

final class AddClassError extends AddClassState {
  const AddClassError({super.message});
}
