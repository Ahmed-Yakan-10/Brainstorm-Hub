import 'package:brainstorm_hub/constants.dart';
import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});

  final bool isActive;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
      backgroundColor: kSecondaryColor,
          radius: 32,
          child: CircleAvatar(
              backgroundColor: color,
              radius: 26,
            ),
        )
        : CircleAvatar(
            backgroundColor: color,
            radius: 32,
          );
  }
}

class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {

  int currentIndex = 0;

  List<Color> colors = const [
    Color(0xff171738),
    Color(0xff593C8F),
    Color(0xff8EF9F3),
    Color(0xffFFD9CE),
    Color(0xffDB5461),
    Color(0xffD1E3DD),
    Color(0xff5762D5),
    Color(0xff6E7DAB),
    Color(0xff575366),
    Color(0xff32292F),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: colors.length,
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.all(2),
          child: GestureDetector(
            onTap: (){
              currentIndex = index;
              setState(() {

              });
            },
            child: ColorItem(
              color: colors[index],
              isActive: currentIndex == index,
            ),
          ),
        );
      },
    );
  }
}
