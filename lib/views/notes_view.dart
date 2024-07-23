
import 'package:brainstorm_hub/constants.dart';
import 'package:flutter/material.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
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
            ),)
          ],
        ),
      ),
    );
  }
}
