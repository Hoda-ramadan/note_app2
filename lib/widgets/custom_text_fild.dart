import 'package:flutter/material.dart';

class CustomTextFild extends StatelessWidget {
  const CustomTextFild({super.key, required this.hint, this.maxline = 1});
  final String hint;
  final int maxline;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: TextField(
        maxLines: maxline,
        decoration: InputDecoration(
          border: buildBorder(),

          hint: Text(hint, style: TextStyle(color: const Color(0xFF4B797F))),
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(borderRadius: BorderRadius.circular(8));
  }
}
