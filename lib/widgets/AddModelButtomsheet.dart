import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app2/cubit/note_cubit.dart';
import 'package:notes_app2/widgets/add_note_form.dart';

class AddModelButtomSheet extends StatefulWidget {
  AddModelButtomSheet({super.key});

  @override
  State<AddModelButtomSheet> createState() => _AddModelButtomSheetState();
}

class _AddModelButtomSheetState extends State<AddModelButtomSheet> {
  bool isloading = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: BlocConsumer<AddNoteCubit, addNoteState>(
          listener: (BuildContext context, state) {
            if (state == addNoteLoading) {
              isloading = true;
            } else if (state == addNotesSuccess) {
              return Navigator.pop(context);
            } else if (state == addNotesfaild) {
              print("error");
            }
          },
          builder: (BuildContext context, state) {
            return ModalProgressHUD(
              inAsyncCall: isloading,
              child: AddNoteformstate(),
            );
          },
        ),
      ),
    );
  }
}
