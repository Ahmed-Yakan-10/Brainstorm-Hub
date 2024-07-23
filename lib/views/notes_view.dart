
import 'package:brainstorm_hub/constants.dart';
import 'package:brainstorm_hub/widgets/notes_view_body.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: (){},
        backgroundColor: kPrimaryColor,
        child: Icon(FontAwesomeIcons.plus,color: kSecondaryColor,),

      ),
      body: const NotesViewBody(),
    );
  }
}

