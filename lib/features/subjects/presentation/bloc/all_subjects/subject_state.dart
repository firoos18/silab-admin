part of 'subject_bloc.dart';

sealed class SubjectState extends Equatable {
  final List<SubjectEntity>? subjectList;
  final String? message;

  const SubjectState({this.subjectList, this.message});

  @override
  List<Object?> get props => [subjectList, message];
}

final class SubjectInitial extends SubjectState {}

final class SubjectLoading extends SubjectState {}

final class SubjectLoaded extends SubjectState {
  const SubjectLoaded({super.subjectList});
}

final class SubjectError extends SubjectState {
  const SubjectError({super.message});
}
