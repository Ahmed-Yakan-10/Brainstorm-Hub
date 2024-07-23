import 'package:brainstorm_hub/constants.dart';
import 'package:brainstorm_hub/widgets/custom_app_bar.dart';
import 'package:brainstorm_hub/widgets/custom_note_item.dart';
import 'package:brainstorm_hub/widgets/custom_search_icon.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: const Column(
        children: [
          SizedBox(
            height: 40,
          ),
          CustomAppBar(),
          SizedBox(
            height: 25,
          ),
          NoteItem(),
        ],
      ),
    );
  }
}


