import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes1_app/simple_bloc_observer.dart';
import 'package:notes1_app/views/notes_view.dart';
import 'package:notes1_app/views/widgets/constants.dart';

import 'models/note_model.dart';

void main() async {
  runApp(const NotesApp());
  Bloc.observer = SimpleBlocObserver();
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotesBox);
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),

      home: NotesView(),
    );
  }
}
