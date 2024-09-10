import 'package:flutter/material.dart';
import 'package:notes/views/widgets/add_note_bottom_sheet.dart';
import 'package:notes/views/widgets/custom_elevated_bottom.dart';
import 'package:notes/views/widgets/custom_text_from.dart';
import 'package:notes/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return AddNoteBottomSheet();
              });
        },
        child: Icon(Icons.add),
      ),
      body: NotesViewBody(),
    );
  }
}
