import 'package:flutter/material.dart';
import 'package:noteapp/views/widgets/custome_app_bar.dart';

import 'Custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(height: 50),
          const CustomUppBar(title: "Edit Note", icon: Icons.edit),
          const SizedBox(height: 50),
          CustomTextField(labelText: "Title"),
          const SizedBox(height: 16),
          CustomTextField(labelText: "Content", maxLines: 5),
        ],
      ),
    );
  }
}
