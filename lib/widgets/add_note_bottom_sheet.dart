import 'package:brainstorm_hub/cubits/add_note_cubit/add_notes_cubit.dart';
import 'package:brainstorm_hub/widgets/add_note_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: SingleChildScrollView(
        child: BlocConsumer(
          listener: (context, state) {
            if (state is AddNotesFailure) {
              print('failed ${state.errorMessage}');
            }
            if (state is AddNotesSuccess) {
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return ModalProgressHUD(
              inAsyncCall: state is AddNotesLoading ? true : false,
              child: AddNoteForm(),
            );
          },
        ),
      ),
    );
  }
}
