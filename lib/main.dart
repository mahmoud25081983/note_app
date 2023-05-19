import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

import 'constant.dart';
import 'models/notemodel.dart';
import 'views/notes_view.dart';

void main() async {
  await Hive.initFlutter();

  await Hive.openBox(kNotesBox);
  Hive.registerAdapter(NoteModelAdapter());
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'To Do App',
      theme: ThemeData(brightness: Brightness.dark, fontFamily: "Poppins"),
      home: const NotesView(),
    );
  }
}
