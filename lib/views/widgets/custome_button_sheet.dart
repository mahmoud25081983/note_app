import 'package:flutter/material.dart';

import 'Custom_button.dart';
import 'Custom_text_field.dart';

class AddButtonSheet extends StatelessWidget {
  const AddButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 32),
        CustomTextField(labelText: "Title",),
        CustomTextField(labelText: "Conent",),
        const SizedBox(height: 32),
        CustomButton(text: 'Add', onTap: () {
          
        },)
      ],
    );
  }
}