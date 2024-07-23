import 'package:brainstorm_hub/constants.dart';
import 'package:brainstorm_hub/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(height: 65,),
          CustomAppBar(
            title: 'Edit Note',
            subtitle: '',
            icon: FontAwesomeIcons.check,
          ),
        ],
      ),
    );
  }
}
