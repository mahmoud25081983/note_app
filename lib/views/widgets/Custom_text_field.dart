import 'package:flutter/material.dart';

import '../../constant.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({super.key, this.labelText, this.onChange, this.keyboardType});

  String? labelText;
  Function(String)? onChange;
  TextInputType? keyboardType;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: TextField(
        cursorColor: kPrimaruColor,
        keyboardType: keyboardType,
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
            borderSide:  BorderSide(
              color:  color ?? Colors.white,),
            borderRadius: BorderRadius.circular(8));
  }
}
