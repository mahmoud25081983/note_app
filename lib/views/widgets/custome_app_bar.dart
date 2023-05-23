// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'custom_search_Icon.dart';

class CustomUppBar extends StatelessWidget {
  final String? title;
  final IconData? icon;
  final void Function()? onPressed;
  const CustomUppBar({
    Key? key,
    required this.title,
    required this.icon,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title!, style: const TextStyle(fontSize: 28)),
        const Spacer(),
        CustomeIcon(
          icon: icon!,
          onPressed: onPressed,
        )
      ],
    );
  }
}
