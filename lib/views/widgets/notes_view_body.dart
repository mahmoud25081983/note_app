import 'package:flutter/material.dart';

import 'custome_app_bar.dart';
import 'custome_list_view_builder.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 50),
          CustomUppBar(title: 'Search Notes', icon: Icons.search),
          NotesListView(),
        ],
      ),
    );
  }
}
