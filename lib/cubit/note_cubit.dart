import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app2/const.dart';
import 'package:notes_app2/model/note_model.dart';

part 'Notes_state.dart';

class NoteCubit extends Cubit<addNoteState> {
  NoteCubit() : super(addNotesinit());

  addNote(NoteModel note) async {
    emit(addNoteLoading());
    try {
      var noteBox = Hive.box(knotesbox);
      await noteBox.add(note);
      emit(addNotesSuccess());
    } catch (e) {
      emit(addNotesfaild(errormasseg: e.toString()));
    }
  }
}
