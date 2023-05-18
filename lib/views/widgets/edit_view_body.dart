import 'package:flutter/material.dart';
import 'package:noteapp/views/widgets/custome_app_bar.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: const [
          SizedBox(height: 50),
          CustomUppBar(title: "Edit Note", icon: Icons.edit),
          
        ],
      ),
    );
  }
}

