import 'package:flutter/material.dart';
import 'package:notes_app2/widgets/custom_appbar.dart';
import 'package:notes_app2/widgets/custom_text_fild.dart';

class EditNodeBodyView extends StatelessWidget {
  const EditNodeBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(height: 20),
          Custom_appbar(icon: Icons.check, appbar_title: 'Edit Node'),
          SizedBox(height: 20),
          CustomTextFild(hint: "Title"),
          SizedBox(height: 4),
          CustomTextFild(hint: "content", maxline: 5),
        ],
      ),
    );
  }
}
