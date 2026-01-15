import 'package:flutter/material.dart';
import 'package:notes_app/const/constance.dart';
import 'package:notes_app/views/widget/add_notest.dart';
import 'package:notes_app/views/widget/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});
 final String  id =notesViewId;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 7, bottom: 6),
        child: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
              context: context,
              builder: (context) {
                return AddNotesBouttomsheet();
              },
            );
          },

          backgroundColor: const Color.fromARGB(255, 125, 214, 225),
          child: const Icon(Icons.add, color: Colors.indigoAccent),
        ),
      ),
      body: const NotesViewBody(),
    );
  }
}
