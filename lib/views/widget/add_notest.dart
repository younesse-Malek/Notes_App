import 'package:flutter/material.dart';
import 'package:notes_app/views/widget/coustom_text_field.dart';

class AddNotesBouttomsheet extends StatelessWidget {
  const AddNotesBouttomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CoustomTextField(),
      ],
    );
  }
}

