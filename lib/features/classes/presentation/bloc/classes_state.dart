part of 'classes_bloc.dart';

sealed class ClassesState extends Equatable {
  final List<ClassEntity>? classList;
  final String? message;

  const ClassesState({this.classList, this.message});

  @override
  List<Object?> get props => [classList, message];
}

final class ClassesInitial extends ClassesState {}

final class ClassesLoading extends ClassesState {}

final class ClassesLoaded extends ClassesState {
  const ClassesLoaded({super.classList});
}

final class ClassesError extends ClassesState {
  const ClassesError({super.message});
}
