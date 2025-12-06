import 'package:notes_app2/model/note_model.dart';

abstract class NoteState {}

class Notesinit extends NoteState {}

class NoteLoading extends NoteState {}

class NotesSuccess extends NoteState {
  final List<NoteModel> note;

  NotesSuccess({required this.note});
}

class Notesfaild extends NoteState {
  final String errormasseg;

  Notesfaild({required this.errormasseg});
}
