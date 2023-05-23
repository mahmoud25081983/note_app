import 'package:flutter/material.dart';

class ColorItems extends StatelessWidget {
  const ColorItems({super.key, required this.isPicked, required this.color});

  final bool isPicked;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: isPicked
          ? CircleAvatar(
              backgroundColor: Colors.white,
              radius: 22,
              child: CircleAvatar(
                backgroundColor: color,
                radius: 18,
              ),
            )
          : CircleAvatar(
              backgroundColor: color,
              radius: 22,
            ),
    );
  }
}

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  List<Color> colors = const [
    Colors.teal,
    Colors.red,
    Colors.yellow,
    Colors.blue,
    Colors.orange,
    Colors.deepPurple,
    Colors.pink
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 22 * 2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              currentIndex = index;
              setState(() {});
            },
            child: ColorItems(
              isPicked: currentIndex == index,
              color: colors[index],
            ),
          );
        },
      ),
    );
  }
}
