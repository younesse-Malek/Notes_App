import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/Cubits/cubit/add_note_cubit.dart';
import 'package:notes_app/views/widget/add_note_form.dart';

class AddNotesBouttomsheet extends StatelessWidget {
  const AddNotesBouttomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 18,
        right: 18,

        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: SingleChildScrollView(
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            if (state is AddNoteFailure) {
              print('Feaild ${state.errmessage}');
            }
            if (state is AddNoteSucces) {
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return ModalProgressHUD(
              inAsyncCall: state is AddNoteLodaing ? true : false,
              child: AddNoteForm(),
            );
          },
        ),
      ),
    );
  }
}
