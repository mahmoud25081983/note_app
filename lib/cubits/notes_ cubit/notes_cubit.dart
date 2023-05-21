import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';

import '../../constant.dart';
import '../../models/notemodel.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  fetchAllNotes() {
     emit(NoteLoading());
    try {
      var noteBox = Hive.box<NoteModel>(kNotesBox);
    List<NoteModel> noteList =  noteBox.values.toList();
      emit(NoteSuccess(noteList));
    } on Exception catch (e) {
      emit(NoteFailure(e.toString()));
    }
  }
}
