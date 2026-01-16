import 'package:flutter/material.dart';
import 'package:notes_app/views/widget/coustom_text_field.dart';
import 'package:notes_app/views/widget/coustoum_button.dart';

class AddNotesBouttomsheet extends StatelessWidget {
  const AddNotesBouttomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(
          left: 18,
          right: 18,
        
          bottom: MediaQuery.of(context).viewInsets.bottom ,
        ),
      child: SingleChildScrollView(
      
        child: AddNoteForm()),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          SizedBox(height: 36),
          CoustomTextField(
            hintText: 'Title',
            maxlines: 1,
            onsave: (value) {
              if (formKey.currentState!.validate()) {
                title = value;
              }
            },
          ),
          SizedBox(height: 21),
          CoustomTextField(
            hintText: 'Content',
            maxlines: 6,
            onsave: (value) {
              if (formKey.currentState!.validate()) {
                subTitle = value;
              }
            },
          ),
          SizedBox(height: 45),
          CoustomButton(
            ontap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          SizedBox(height: 17),
        ],
      ),
    );
  }
}
