import 'package:brainstorm_hub/constants.dart';
import 'package:brainstorm_hub/widgets/custom_app_bar.dart';
import 'package:brainstorm_hub/widgets/custom_note_item.dart';
import 'package:brainstorm_hub/widgets/custom_search_icon.dart';
import 'package:brainstorm_hub/widgets/notes_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(height: 65,),
          CustomAppBar(),
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}

