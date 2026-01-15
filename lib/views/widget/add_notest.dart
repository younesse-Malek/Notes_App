import 'package:flutter/material.dart';
import 'package:notes_app/views/widget/coustom_text_field.dart';
import 'package:notes_app/views/widget/coustoum_button.dart';

class AddNotesBouttomsheet extends StatelessWidget {
  const AddNotesBouttomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 36),
            CoustomTextField(hintText: 'Title', maxlines: 1),
            SizedBox(height: 21),
            CoustomTextField(hintText: 'Content', maxlines: 6),
            SizedBox(height: 45),
            CoustomButton(),
            SizedBox(height: 17),
          ],
        ),
      ),
    );
  }
}


