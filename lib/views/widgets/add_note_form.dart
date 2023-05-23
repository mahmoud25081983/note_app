import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:noteapp/models/notemodel.dart';
import 'package:intl/intl.dart';

import 'Custom_button.dart';
import 'Custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formlKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, content;
  String formattedDate = DateFormat('dd/MMMM/yyyy').format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formlKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(height: 32),
          CustomTextField(
            hintText: "Title",
            onSave: (value) {
              title = value;
            },
          ),
          const SizedBox(height: 16),
          CustomTextField(
            hintText: "Content",
            maxLines: 5,
            onSave: (value) {
              content = value;
            },
          ),
          const SizedBox(height: 32),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) => CustomButton(
              isLoading: state is AddNoteLoading ? true : false,
              text: 'Add',
              onTap: () {
                if (formlKey.currentState!.validate()) {
                  formlKey.currentState!.save();
                  NoteModel note = NoteModel(
                    title: title!,
                    content: content!,
                    date: formattedDate,
                    color: Colors.greenAccent.value,
                  );
                  BlocProvider.of<AddNoteCubit>(context).addNote(note);
                } else {
                  autovalidateMode = AutovalidateMode.always;
                  setState(() {});
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
