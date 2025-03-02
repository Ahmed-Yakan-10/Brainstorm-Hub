import 'package:brainstorm_hub/cubits/add_note_cubit/add_notes_cubit.dart';
import 'package:brainstorm_hub/cubits/notes_cubit/notes_cubit.dart';
import 'package:brainstorm_hub/models/note_model.dart';
import 'package:brainstorm_hub/widgets/add_note_form.dart';
import 'package:brainstorm_hub/widgets/custom_button.dart';
import 'package:brainstorm_hub/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNotesCubit(),
      child: BlocConsumer<AddNotesCubit, AddNotesState>(
          listener: (context, state) {
        if (state is AddNotesFailure) {
        }
        if (state is AddNotesSuccess) {
          BlocProvider.of<NotesCubit>(context).fetchAllNotes();
          Navigator.pop(context);
        }
      }, builder: (context, state) {
        return AbsorbPointer(
          absorbing: state is AddNotesLoading ? true : false,
          child: Padding(
            padding: EdgeInsets.only(
              left: 12,
              right: 12,
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: SingleChildScrollView(
              child: AddNoteForm(),
            ),
          ),
        );
      }),
    );
  }
}
