part of 'add_subject_bloc.dart';

sealed class AddSubjectEvent extends Equatable {
  final AddSubjectModel? subjectModel;

  const AddSubjectEvent({this.subjectModel});

  @override
  List<Object?> get props => [subjectModel];
}

final class AddSubjectButtonTapped extends AddSubjectEvent {
  const AddSubjectButtonTapped({super.subjectModel});
}
