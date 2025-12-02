import 'package:bloc/bloc.dart';
import 'package:notes_app2/model/note_model.dart';

part 'Notes_state.dart';

class NoteCubit extends Cubit<addNoteState> {
  NoteCubit() : super(addNotesinit());

  addNote(NoteModel note) {}
}
