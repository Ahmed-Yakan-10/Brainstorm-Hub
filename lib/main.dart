import 'package:brainstorm_hub/constants.dart';
import 'package:brainstorm_hub/models/note_model.dart';
import 'package:brainstorm_hub/views/notes_view.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
  Hive.registerAdapter(NoteModelAdapter());

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
