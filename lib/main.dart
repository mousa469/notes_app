import 'package:flutter/material.dart';
import 'package:notes/views/edit_note_view.dart';
import 'package:notes/views/notes_view.dart';

void main() {
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: "Poppins"
      ),
     routes: {
      NotesView.id : (context) => const NotesView(),
      EditNoteView.id : (context) => const EditNoteView(),
     },
     initialRoute:NotesView.id ,
    );
  }
}
