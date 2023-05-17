import 'package:flutter/material.dart';

import 'custome_app_bar.dart';
import 'custome_list_view_builder.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: const [
          SizedBox(height: 50),
          CustomUppBar(),
          NotesListView(),
        ],
      ),
    );
  }
}
