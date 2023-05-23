import 'package:flutter/material.dart';

import '../../constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.onSave,
    this.keyboardType,
    this.init,
    this.maxLines = 1,
    this.onChanged,
    this.hintText,
  });
  final String? init;
  final int? maxLines;


  final String? hintText;
  final void Function(String?)? onSave;
  final void Function(String)? onChanged;
  final TextInputType? keyboardType;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: kPrimaruColor,
      keyboardType: keyboardType,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hintText,
        //labelStyle: const TextStyle(color: kPrimaruColor),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(kPrimaruColor),
      ),
      onSaved: onSave,
      onChanged: onChanged,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return "Field is required";
        } else {
          return null;
        }
      },
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
