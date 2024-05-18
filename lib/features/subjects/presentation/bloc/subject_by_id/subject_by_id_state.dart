part of 'subject_by_id_bloc.dart';

sealed class SubjectByIdState extends Equatable {
  final SubjectEntity? subjectEntity;
  final String? message;

  const SubjectByIdState({this.subjectEntity, this.message});

  @override
  List<Object?> get props => [subjectEntity, message];
}

final class SubjectByIdInitial extends SubjectByIdState {}

final class SubjectByIdLoading extends SubjectByIdState {}

final class SubjectByIdLoaded extends SubjectByIdState {
  const SubjectByIdLoaded({super.subjectEntity});
}

final class SubjectByIdError extends SubjectByIdState {
  const SubjectByIdError({super.message});
}
