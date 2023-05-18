import 'package:flutter/material.dart';

import '../../constant.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    this.labelText,
    this.onChange,
    this.keyboardType,
    this.init,
    this.maxLines = 1,
  });
  final String? init;
  final int? maxLines;

 final String? labelText;
 final Function(String)? onChange;
 final TextInputType? keyboardType;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: TextField(
        cursorColor: kPrimaruColor,
        keyboardType: keyboardType,
        maxLines: maxLines,
        decoration: InputDecoration(
          labelText: labelText!,
          //labelStyle: const TextStyle(color: kPrimaruColor),
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(kPrimaruColor),
        ),
        onChanged: onChange,
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
        borderSide: BorderSide(
          color: color ?? Colors.white,
        ),
        borderRadius: BorderRadius.circular(8));
  }
}
