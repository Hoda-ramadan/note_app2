import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app2/cubit/addcubit/note_cubit.dart';
import 'package:notes_app2/model/note_model.dart';
import 'package:notes_app2/widgets/CustomButtom.dart';
import 'package:notes_app2/widgets/custom_text_fild.dart';

class AddNoteformstate extends StatefulWidget {
  AddNoteformstate({super.key});

  @override
  State<AddNoteformstate> createState() => _AddNoteformstateState();
}

class _AddNoteformstateState extends State<AddNoteformstate> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          SizedBox(height: 32),
          CustomTextFild(
            onsaved: (value) {
              title = value;
            },
            hint: 'Title',
          ),
          SizedBox(height: 8),
          CustomTextFild(
            onsaved: (value) {
              subtitle = value;
            },
            hint: "containt",
            maxline: 5,
          ),
          SizedBox(height: 20),
          BlocBuilder<AddNoteCubit, addNoteState>(
            builder: (BuildContext context, addNoteState state) {
              return CustomButtom(
                isLoading: state is addNoteLoading ? true : false,
                ontap: () {
                  if (formkey.currentState!.validate()) {
                    formkey.currentState!.save();
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                  }
                  var note = NoteModel(
                    title: title!,
                    subtitle: subtitle!,
                    date: DateTime.now().toString(),
                    color: 23,
                  );
                  BlocProvider.of<AddNoteCubit>(context).addNote(note);
                },
              );
            },
          ),
          SizedBox(height: 8),
        ],
      ),
    );
  }
}
