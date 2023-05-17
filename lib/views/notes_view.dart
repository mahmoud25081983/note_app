import 'package:flutter/material.dart';

import 'widgets/custome_button_sheet.dart';
import 'widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const NotesViewBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            context: context,
            builder: (context) {
              return const AddButtonSheet();
            },
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}


