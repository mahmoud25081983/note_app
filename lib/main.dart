import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'constant.dart';
import 'cubits/add_note_cubit/add_note_cubit.dart';
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
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) =>  AddNoteCubit())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'To Do App',
        theme: ThemeData(brightness: Brightness.dark, fontFamily: "Poppins"),
        home: const NotesView(),
      ),
    );
  }
}
