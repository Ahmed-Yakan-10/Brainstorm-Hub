import 'package:brainstorm_hub/constants.dart';
import 'package:brainstorm_hub/cubits/add_note_cubit/add_notes_cubit.dart';
import 'package:brainstorm_hub/models/note_model.dart';
import 'package:brainstorm_hub/simple_bloc_observer.dart';
import 'package:brainstorm_hub/views/notes_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {

  await Hive.initFlutter();

  Bloc.observer = SimpleBlocObserver();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotesBox);


  runApp(const BrainStormHub());
}

class BrainStormHub extends StatelessWidget {
  const BrainStormHub({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: kFont,
      ),
      home: const NotesView(),
    );
  }
}
