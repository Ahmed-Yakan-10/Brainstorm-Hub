import 'package:brainstorm_hub/cubits/notes_cubit/notes_cubit.dart';
import 'package:brainstorm_hub/models/note_model.dart';
import 'package:brainstorm_hub/widgets/custom_note_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(builder: (context, state) {
      List<NoteModel> notes = BlocProvider.of<NotesCubit>(context).notes ?? [];
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: notes.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 8),
              child: NoteItem(
                note: notes[index],
              ),
            );
          },
        ),
      );
    });
  }
}
