
import 'package:brainstorm_hub/constants.dart';
import 'package:brainstorm_hub/cubits/notes_cubit/notes_cubit.dart';
import 'package:brainstorm_hub/widgets/add_note_bottom_sheet.dart';
import 'package:brainstorm_hub/widgets/notes_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=> NotesCubit(),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
            onPressed: (){
              showModalBottomSheet(
                isScrollControlled: true,
                  context: context,
                  builder: (context){
                    return const AddNoteBottomSheet();
                  },
              );
            },
          backgroundColor: kPrimaryColor,
          child: const Icon(FontAwesomeIcons.plus,color: kSecondaryColor,),

        ),
        body: const NotesViewBody(),
      ),
    );
  }
}

