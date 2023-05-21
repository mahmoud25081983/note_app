import 'package:flutter/material.dart';

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
  String? title, subTitel;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formlKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(height: 32),
          CustomTextField(
            labelText: "Title",
            onSave: (value) {
              title = value;
            },
          ),
          const SizedBox(height: 16),
          CustomTextField(
            labelText: "Content",
            maxLines: 5,
            onSave: (value) {
              subTitel = value;
            },
          ),
          const SizedBox(height: 32),
          CustomButton(
            text: 'Add',
            onTap: () {
              if (formlKey.currentState!.validate()) {
                formlKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
        ],
      ),
    );
  }
}