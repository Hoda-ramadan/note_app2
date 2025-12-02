part of 'note_cubit.dart';

abstract class addNoteState {}

class addNotesinit extends addNoteState {}

class addNoteLoading extends addNoteState {}

class addNotesSuccess extends addNoteState {}

class addNotesfaild extends addNoteState {
  final String errormasseg;

  addNotesfaild({required this.errormasseg});
}
