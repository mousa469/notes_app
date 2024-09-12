import 'package:flutter/material.dart';
import 'package:notes/views/widgets/add_note_from.dart';


class AddNoteBottomSheet extends StatelessWidget {
  AddNoteBottomSheet({super.key});


  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: AddNoteForm()
      ),
    );
  }
}

