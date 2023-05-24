import 'package:flutter/material.dart';

import '../../constant.dart';
import '../../models/notemodel.dart';
import 'custom_color_picker.dart';

class EditeNoteColorPicker extends StatefulWidget {
  const EditeNoteColorPicker({super.key, required this.noteModel});
  final NoteModel noteModel;
  @override
  State<EditeNoteColorPicker> createState() => _EditeNoteColorPickerState();
}

class _EditeNoteColorPickerState extends State<EditeNoteColorPicker> {
  late int currentIndex;
  @override
  void initState() {
    currentIndex = kColors.indexOf(Color(widget.noteModel.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 22 * 2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: kColors.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              currentIndex = index;
              widget.noteModel.color = kColors[index].value;
              setState(() {});
            },
            child: ColorItems(
              isPicked: currentIndex == index,
              color: kColors[index],
            ),
          );
        },
      ),
    );
  }
}