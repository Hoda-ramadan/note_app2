import 'package:flutter/material.dart';
import 'package:notes_app2/widgets/CustomButtom.dart';
import 'package:notes_app2/widgets/custom_text_fild.dart';

class AddModelButtomSheet extends StatelessWidget {
  const AddModelButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(child: AddNoteformstate()),
    );
  }
}

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
          CustomButtom(
            ontap: () {
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
              }
            },
          ),
          SizedBox(height: 8),
        ],
      ),
    );
  }
}
