import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app2/cubit/readNotecubit/Notecubit.dart';
import 'package:notes_app2/cubit/readNotecubit/noteState.dart';
import 'package:notes_app2/model/note_model.dart';
import 'package:notes_app2/widgets/Custom_Note_item.dart';

class NodeListview extends StatelessWidget {
  const NodeListview({super.key});
  final data = const [
    Color(0xFFBEB352),
    Color(0xFF548EBE),
    Color(0xFFB4B887),

    Color(0xFFAB667D),
  ];
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteCubit, NoteState>(
      builder: (BuildContext context, state) {
        List<NoteModel> note = BlocProvider.of<NoteCubit>(context).notes ?? [];
        return Padding(
          padding: const EdgeInsets.only(bottom: 10, top: 10),
          child: ListView.builder(
            itemCount: note.length,
            itemBuilder: (context, index) {
              final color = data[index % data.length];
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: CustomNoteItem(color: color),
              );
            },
          ),
        );
      },
    );
  }
}
