import 'package:brainstorm_hub/constants.dart';
import 'package:brainstorm_hub/cubits/notes_cubit/notes_cubit.dart';
import 'package:brainstorm_hub/widgets/custom_app_bar.dart';
import 'package:brainstorm_hub/widgets/custom_note_item.dart';
import 'package:brainstorm_hub/widgets/custom_search_icon.dart';
import 'package:brainstorm_hub/widgets/notes_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {

  void initState(){
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(height: 65,),
          CustomAppBar(
            title: 'Brainstorm ',
            subtitle: 'Hub',
            icon: FontAwesomeIcons.search,
          ),
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}

