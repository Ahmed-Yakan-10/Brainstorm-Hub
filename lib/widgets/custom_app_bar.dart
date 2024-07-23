import 'package:brainstorm_hub/constants.dart';
import 'package:brainstorm_hub/widgets/custom_search_icon.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.icon, required this.subtitle,});

  final String title;
  final String subtitle;
final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(height: 50, child: Image.asset(kIcon)),
        SizedBox(width: 5,),
        Row(
           children: [
             Text(title,),
             Text(subtitle,),
           ],
        ),
        Spacer(),
        CustomIcon(icon: icon,),
      ],
    );
  }
}
