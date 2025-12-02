import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app2/const.dart';
import 'package:notes_app2/cubit/note_cubit.dart';
import 'package:notes_app2/model/note_model.dart';
import 'package:notes_app2/views/home_page.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(knotesbox);
  Hive.registerAdapter(NoteModelAdapter());
  runApp(Nodes_app());
}

class Nodes_app extends StatelessWidget {
  const Nodes_app({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => AddNoteCubit())],
      child: MaterialApp(
        theme: ThemeData(brightness: Brightness.dark),
        home: HomePage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
