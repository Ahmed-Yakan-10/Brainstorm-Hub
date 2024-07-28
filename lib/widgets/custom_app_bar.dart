import 'package:brainstorm_hub/constants.dart';
import 'package:brainstorm_hub/widgets/custom_search_icon.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    required this.icon,
    required this.subtitle, this.onPressed,
  });

  final String title;
  final String subtitle;
  final IconData icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(height: 50, child: Image.asset(kIcon)),
        SizedBox(
          width: 5,
        ),
        Row(
          children: [
            Text(
              title,
              style: TextStyle(
                color: kPrimaryColor,
                fontSize: 20,fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              subtitle,
              style: TextStyle(
                color: kSecondaryColor,
                fontSize: 20,fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        Spacer(),
        CustomIcon(
          onPressed: onPressed,
          icon: icon,
        ),
      ],
    );
  }
}
