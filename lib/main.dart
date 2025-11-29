import 'package:flutter/material.dart';
import 'package:notes_app2/views/home_page.dart';

void main() {
  runApp(Nodes_app());
}

class Nodes_app extends StatelessWidget {
  const Nodes_app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.dark),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
