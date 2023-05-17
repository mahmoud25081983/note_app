import 'package:flutter/material.dart';

import 'custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  final Data = const [
    Colors.redAccent,
    Colors.yellowAccent,
    Colors.greenAccent,
    Colors.blueAccent,
    Colors.tealAccent,
    Colors.orangeAccent,
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          padding: const EdgeInsets.all(0),
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return const NoteItem();
          },
        ),
      ),
    );
  }
}
