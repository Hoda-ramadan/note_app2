import 'package:bloc/bloc.dart';

part 'Notes_state.dart';

class NoteCubit extends Cubit<addNoteState> {
  NoteCubit() : super(addNotesinit());
}
