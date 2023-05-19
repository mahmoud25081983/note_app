import 'package:flutter/material.dart';
import 'package:noteapp/views/widgets/custome_app_bar.dart';

import 'Custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 50),
          CustomUppBar(title: "Edit Note", icon: Icons.edit),
          SizedBox(height: 50),
          CustomTextField(labelText: "Title"),
          SizedBox(height: 16),
          CustomTextField(labelText: "Content", maxLines: 5),
        ],
      ),
    );
  }
}
