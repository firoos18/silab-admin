part of 'add_subject_bloc.dart';

sealed class AddSubjectState extends Equatable {
  final String? message;

  const AddSubjectState({this.message});

  @override
  List<Object?> get props => [message];
}

final class AddSubjectInitial extends AddSubjectState {}

final class AddSubjectLoading extends AddSubjectState {}

final class AddSubjectLoaded extends AddSubjectState {
  const AddSubjectLoaded({super.message});
}

final class AddSubjectError extends AddSubjectState {
  const AddSubjectError({super.message});
}
