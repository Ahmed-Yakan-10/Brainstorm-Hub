import 'package:brainstorm_hub/models/note_model.dart';
import 'package:flutter/material.dart';

@immutablec
abstract class NotesState {}

class NotesInitial extends NotesState {}
class NotesLoading extends NotesState {}
class NotesSuccess extends NotesState {
  final List<NoteModel> notes;

  NotesSuccess(this.notes);

}
class NotesFailure extends NotesState {
  final String errorMessage;

  NotesFailure(this.errorMessage);

}