import 'package:flutter/material.dart';
import 'package:notes_app/views/widget/coustom_app_bar.dart';
import 'package:notes_app/views/widget/custoum_Note_item.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17),
      child: Column(
        children: [
          SizedBox(height: 32),
          CustomAppBar(),
          Expanded(child: ListViewNotes()),
        ],
      ),
    );
  }
}

class ListViewNotes extends StatelessWidget {
  const ListViewNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 7),
          child: NoteItem(),
        );
      },
    );
  }
}
