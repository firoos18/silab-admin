part of 'classes_bloc.dart';

sealed class ClassesEvent extends Equatable {
  const ClassesEvent();

  @override
  List<Object?> get props => [];
}

final class HomePageOpened extends ClassesEvent {}
