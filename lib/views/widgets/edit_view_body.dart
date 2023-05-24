import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/constant.dart';
import 'package:noteapp/views/widgets/custome_app_bar.dart';

import '../../cubits/notes_ cubit/notes_cubit.dart';
import '../../models/notemodel.dart';
import 'Custom_text_field.dart';
import 'custom_color_picker.dart';
import 'custome_edite_note_color_picker.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.noteModel});
  final NoteModel noteModel;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(height: 50),
          CustomUppBar(
            title: "Edit Note",
            icon: Icons.edit,
            onPressed: () {
              widget.noteModel.title = title ?? widget.noteModel.title;
              widget.noteModel.content = content ?? widget.noteModel.content;
              widget.noteModel.save();
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },
          ),
          const SizedBox(height: 50),
          CustomTextField(
            hintText: widget.noteModel.title,
            onChanged: (value) {
              title = value;
            },
          ),
          const SizedBox(height: 16),
          CustomTextField(
            hintText: widget.noteModel.content,
            maxLines: 5,
            onChanged: (value) {
              content = value;
            },
          ),
          const SizedBox(height: 16),
          EditeNoteColorPicker(noteModel: widget.noteModel)
        ],
      ),
    );
  }
}


