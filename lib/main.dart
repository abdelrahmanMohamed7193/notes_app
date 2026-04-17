import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes1_app/views/notes_view.dart';
import 'package:notes1_app/views/widgets/constants.dart';

void main() async {
  runApp(const NotesApp());

  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
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
