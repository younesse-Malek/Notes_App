import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/Models/model_note.dart';
import 'package:notes_app/const/constance.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'Cubits/cubit/add_note_cubit.dart';


void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(ModelNoteAdapter());
  await Hive.openBox<ModelNote>(kNotesBox);
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AddNoteCubit(),
        ),
       
      ],
      child:Container(),
    )
    ;
  }
}
