part of 'add_note_cubit.dart';

@immutable
abstract class AddNoteState {}

class AddNoteInitial extends AddNoteState {}

class AddNoteLoading extends AddNoteState {}

class AddNoteLSuccess extends AddNoteState {}

class AddNoteFailure extends AddNoteState {
  final String errorMessage;
  AddNoteFailure(this.errorMessage);
}
//git config http.postBuffer 524288000