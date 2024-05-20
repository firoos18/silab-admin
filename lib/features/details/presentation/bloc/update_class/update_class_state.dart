part of 'update_class_bloc.dart';

class UpdateClassState extends Equatable {
  final ClassEntity? classEntity;
  final String? message;

  const UpdateClassState({this.classEntity, this.message});

  @override
  List<Object?> get props => [classEntity, message];
}

final class UpdateClassInitial extends UpdateClassState {}

final class UpdateClassLoading extends UpdateClassState {}

final class UpdateClassLoaded extends UpdateClassState {
  const UpdateClassLoaded({super.classEntity});
}

final class UpdateClassError extends UpdateClassState {
  const UpdateClassError({super.message});
}
