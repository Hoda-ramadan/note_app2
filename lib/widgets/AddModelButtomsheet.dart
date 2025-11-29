import 'package:flutter/material.dart';
import 'package:notes_app2/widgets/CustomButtom.dart';
import 'package:notes_app2/widgets/custom_text_fild.dart';

class AddModelButtomSheet extends StatelessWidget {
  const AddModelButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 32),
            CustomTextFild(hint: 'Title'),
            SizedBox(height: 8),
            CustomTextFild(hint: "containt", maxline: 5),
            SizedBox(height: 20),
            CustomButtom(),
            SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
