import 'package:flutter/material.dart';
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
    return Padding(
      padding: const EdgeInsets.only(bottom: 10, top: 10),
      child: ListView.builder(
        itemBuilder: (context, index) {
          final color = data[index % data.length];
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: CustomNoteItem(color: color),
          );
        },
      ),
    );
  }
}
