import 'package:flutter/material.dart';

class CustomTextFild extends StatelessWidget {
  const CustomTextFild({
    super.key,
    required this.hint,
    this.maxline = 1,
    this.onsaved,
  });
  final String hint;
  final int maxline;
  final void Function(String?)? onsaved;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: TextFormField(
        onSaved: onsaved,
        validator: (value) {
          if (value?.isEmpty ?? true) {
            return ("this filed is require");
          }
        },
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
