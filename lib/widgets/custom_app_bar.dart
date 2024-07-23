import 'package:brainstorm_hub/constants.dart';
import 'package:brainstorm_hub/widgets/custom_search_icon.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Row(
        children: [
          Container(height: 50, child: Image.asset(kIcon)),
          SizedBox(width: 5,),
          Text('Brainstorm',style: TextStyle(
            color:kPrimaryColor,fontSize: 24,
            fontWeight: FontWeight.bold,
          ),),
          SizedBox(width: 5,),
          Text('Hub',style: TextStyle(
            color:kSecondaryColor,fontSize: 24,
            fontWeight: FontWeight.bold,
          ),),
          Spacer(),
          CustomSearchIcon(),
        ],
      ),
    );
  }
}
