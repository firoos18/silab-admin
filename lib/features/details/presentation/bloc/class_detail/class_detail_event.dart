part of 'class_detail_bloc.dart';

sealed class ClassDetailEvent extends Equatable {
  final String? id;

  const ClassDetailEvent({this.id});

  @override
  List<Object?> get props => [id];
}

final class GetClassDetails extends ClassDetailEvent {
  const GetClassDetails({super.id});
}
