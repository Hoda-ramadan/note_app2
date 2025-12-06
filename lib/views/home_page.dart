import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app2/cubit/readNotecubit/Notecubit.dart';
import 'package:notes_app2/views/Notes_view_body.dart';
import 'package:notes_app2/widgets/AddModelButtomsheet.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NoteCubit(),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 146, 78, 100),

          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              context: context,
              builder: (context) {
                return AddModelButtomSheet();
              },
            );
          },
          child: Icon(Icons.add, color: Colors.black),
        ),
        body: NodesViewBody(),
      ),
    );
  }
}
