import 'package:flutter/material.dart';
import 'package:notes_app2/widgets/Custom_note_listview.dart';
import 'package:notes_app2/widgets/custom_appbar.dart';

class NodesViewBody extends StatelessWidget {
  const NodesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Custom_appbar(icon: Icons.search, appbar_title: "Nodes"),
            Expanded(child: NodeListview()),
          ],
        ),
      ),
    );
  }
}
