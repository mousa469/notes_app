import 'package:flutter/material.dart';
import 'package:notes/views/widgets/custom_elevated_bottom.dart';
import 'package:notes/views/widgets/custom_text_from.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          CustomTextForm(
            onSaved: (value) {
              title = value;
            },
            hintText: "Title",
          ),
          const SizedBox(
            height: 10,
          ),
          CustomTextForm(
            onSaved: (value) {
              subTitle = value;
            },
            hintText: "Content",
            maxLines: 5,
          ),
          const SizedBox(
            height: 20,
          ),
          CustomElevatedButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                } else {
                  autovalidateMode = AutovalidateMode.always;
                  setState(() {
                    
                  });
                }
              },
              title: "Add")
        ],
      ),
    );
  }
}
