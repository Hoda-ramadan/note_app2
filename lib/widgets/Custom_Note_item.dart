import 'package:flutter/material.dart';
import 'package:notes_app2/views/edit_note_body.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key, required this.color});
  final Color color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return EditNodeBody();
            },
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.only(top: 16, bottom: 16, left: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: color,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                "Flutter tips",
                style: TextStyle(fontSize: 25, color: Colors.black),
              ),
              subtitle: Text(
                "build your container with hoda",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black.withOpacity(0.5),
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(Icons.delete, size: 20, color: Colors.black),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Text("4/11/2025", style: TextStyle(color: Colors.black)),
            ),
          ],
        ),
      ),
    );
  }
}
