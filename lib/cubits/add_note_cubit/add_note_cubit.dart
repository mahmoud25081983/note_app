import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../models/notemodel.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addNote(NoteModel noteModel){
    
  }
}