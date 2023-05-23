import 'package:flutter/material.dart';

class ColorItems extends StatelessWidget {
  const ColorItems({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(1),
      child: CircleAvatar(
        backgroundColor: Colors.blue,
        radius: 22,
      ),
    );
  }
}

class ColorsListView extends StatelessWidget {
  const ColorsListView({super.key});

  final colors = const [
    Colors.redAccent,
    Colors.yellowAccent,
    Colors.greenAccent,
    Colors.blueAccent,
    Colors.tealAccent,
    Colors.orangeAccent,
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 22 * 2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return const ColorItems();
        },
      ),
    );
  }
}