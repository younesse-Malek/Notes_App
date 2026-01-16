part of 'add_note_cubit.dart';

@immutable
sealed class AddNoteState {}

final class AddNoteInitial extends AddNoteState {}

final class AddNoteLodaing extends AddNoteState {}

final class AddNoteSucces extends AddNoteState {}

final class AddNoteFailure extends AddNoteState {
 final String errmessage;

  AddNoteFailure(this.errmessage);

}
