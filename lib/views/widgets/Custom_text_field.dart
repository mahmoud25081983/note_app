import 'package:flutter/material.dart';

import '../../constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, 
    this.labelText,
    this.onSave,
    this.keyboardType,
    this.init,
    this.maxLines = 1,
  });
  final String? init;
  final int? maxLines;

  final String? labelText;
  final void Function(String?)? onSave;
  final TextInputType? keyboardType;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
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
      onSaved: onSave,
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
