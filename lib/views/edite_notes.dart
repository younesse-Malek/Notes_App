import 'package:flutter/material.dart';
import 'package:notes_app/const/constance.dart';
import 'package:notes_app/views/widget/edit_note-view-body.dart';

class EditeNotes extends StatelessWidget {
  const EditeNotes({super.key});
  final String editeNodeID = editNoteID;
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: EditeNoteviewBody());
  }
}
