part of 'add_notes_cubit.dart';


@immutable
abstract class NotesState {}

class AddNotesInitial extends NotesState {}

class AddNotesLoading extends NotesState {}

class AddNotesSuccess extends NotesState {}

class AddNotesFailure extends NotesState {
  final String errorMessage;

  AddNotesFailure(this.errorMessage);
}
