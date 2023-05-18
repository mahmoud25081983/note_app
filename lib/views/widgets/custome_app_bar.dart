// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'custom_search_Icon.dart';

class CustomUppBar extends StatelessWidget {
  const CustomUppBar({super.key, 
    required this.title,
    required this.icon,
  });
  final String? title;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         Text(title!, style: const TextStyle(fontSize: 28)),
        const Spacer(),
        CustomeSearchIcon(icon: icon!)
      ],
    );
  }
}
