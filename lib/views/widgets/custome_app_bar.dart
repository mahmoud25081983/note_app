import 'package:flutter/material.dart';

import 'custom_search_Icon.dart';

class CustomUppBar extends StatelessWidget {
  const CustomUppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Text("Notes", style: TextStyle(fontSize: 28)),
        Spacer(),
        CustomeSearchIcon()
      ],
    );
  }
}


