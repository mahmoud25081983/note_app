import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/cubits/notes_%20cubit/notes_cubit.dart';

import '../../models/notemodel.dart';
import 'custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});



  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel> notes = BlocProvider.of<NotesCubit>(context).notesList!;
        return Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
              padding: const EdgeInsets.all(0),
              itemCount: notes.length,
              itemBuilder: (BuildContext context, int index) {
                return  NoteItem(noteModel: notes[index]);
              },
            ),
          ),
        );
      },
    );
  }
}
