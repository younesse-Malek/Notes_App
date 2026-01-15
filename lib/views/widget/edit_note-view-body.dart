import 'package:flutter/material.dart';
import 'package:notes_app/views/widget/coustom_app_bar.dart';
import 'package:notes_app/views/widget/coustom_text_field.dart';

class EditeNoteviewBody extends StatelessWidget {
  const EditeNoteviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17),
      child: const Column(
        children: [
          SizedBox(height: 50),
          CustomAppBar(title: 'Edite Note', iconAppbar: Icons.check),
          SizedBox(height: 40),
          CoustomTextField(hintText: 'Title'),
          SizedBox(height: 22),
          CoustomTextField(hintText: 'Content', maxlines: 6),
        ],
      ),
    );
  }
}
