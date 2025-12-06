import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app2/const.dart';
import 'package:notes_app2/cubit/readNotecubit/noteState.dart';
import 'package:notes_app2/model/note_model.dart';

class NoteCubit extends Cubit<NoteState> {
  NoteCubit() : super(Notesinit());
  List<NoteModel>? notes;
  fetchAllnote() async {
    var noteBox = Hive.box<NoteModel>(knotesbox);
    notes = noteBox.values.toList();
  }
}
