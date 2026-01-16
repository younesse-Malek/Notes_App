import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/Models/model_note.dart';
import 'package:notes_app/const/constance.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addNote(ModelNote Note) async {
    try {
      emit(AddNoteLodaing());
      var box = Hive.box<ModelNote>(kNotesBox);
      await box.add(Note);
      emit(AddNoteSucces());
    } on Exception catch (e) {
      emit(AddNoteFailure(e.toString()));
    }
  }
}
