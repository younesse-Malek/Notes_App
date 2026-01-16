import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/const/constance.dart';
import 'package:notes_app/views/edite_Notes.dart';
import 'package:notes_app/views/notes_view.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
      routes: {
        NotesView().id: (context) => NotesView(),
        EditeNotes().editeNodeID: (context) => EditeNotes(),
      },
      initialRoute: const NotesView().id,
    );
  }
}
