part of 'class_detail_bloc.dart';

class ClassDetailState extends Equatable {
  final ClassEntity? classEntity;
  final String? message;

  const ClassDetailState({this.classEntity, this.message});

  @override
  List<Object?> get props => [classEntity, message];
}

final class ClassDetailInitial extends ClassDetailState {}

final class ClassDetailLoading extends ClassDetailState {}

final class ClassDetailLoaded extends ClassDetailState {
  const ClassDetailLoaded({super.classEntity});
}

final class ClassDetailError extends ClassDetailState {
  const ClassDetailError({super.message});
}
