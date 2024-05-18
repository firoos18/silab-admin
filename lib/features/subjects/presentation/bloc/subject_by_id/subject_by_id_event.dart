part of 'subject_by_id_bloc.dart';

sealed class SubjectByIdEvent extends Equatable {
  final String? id;

  const SubjectByIdEvent({this.id});

  @override
  List<Object?> get props => [id];
}

final class GetSubjectById extends SubjectByIdEvent {
  const GetSubjectById({super.id});
}
