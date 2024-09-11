import 'package:flutter/material.dart';
import 'package:notes/views/widgets/custom_app_bar.dart';

import 'package:notes/views/widgets/custom_text_from.dart';

class EditNoteViewBody extends StatelessWidget {
  EditNoteViewBody({super.key});
  TextEditingController titleController = TextEditingController();
  TextEditingController contentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:  20),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          const CustomAppBar(
            title: "Edit notes",
            icon: Icons.check,
          ),
          const SizedBox(
            height: 10,
          ),
          CustomTextForm(
            hintText: "Title",
            controller: titleController,
          ),
          const SizedBox(
            height: 10,
          ),
          CustomTextForm(
            hintText: "Content",
            controller: contentController,
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
