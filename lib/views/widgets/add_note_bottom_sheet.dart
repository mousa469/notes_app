import 'package:flutter/material.dart';
import 'package:notes/views/widgets/custom_elevated_bottom.dart';
import 'package:notes/views/widgets/custom_text_from.dart';

class AddNoteBottomSheet extends StatelessWidget {
  AddNoteBottomSheet({super.key});
  TextEditingController titleController = TextEditingController();
  TextEditingController contentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(
          children: [
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
            const SizedBox(
              height: 20,
            ),
            CustomElevatedButton(onPressed: () {}, title: "Add")
          ],
        ),
      ),
    );
  }
}
