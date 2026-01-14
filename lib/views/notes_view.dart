import 'package:flutter/material.dart';
import 'package:notes_app/views/widget/notes_view-body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor:const  Color.fromARGB(255, 125, 214, 225),
        child: const Icon(Icons.add, color: Colors.indigoAccent),
      ),
      body:const  NotesViewBody(),
    );
  }
}
