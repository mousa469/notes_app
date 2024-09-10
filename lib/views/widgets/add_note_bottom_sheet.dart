import 'package:flutter/material.dart';
import 'package:notes/views/widgets/custom_elevated_bottom.dart';
import 'package:notes/views/widgets/custom_text_from.dart';
class AddNoteBottomSheet extends StatelessWidget {
 AddNoteBottomSheet({super.key});
  TextEditingController titleController  = TextEditingController() ;
    TextEditingController contentController  = TextEditingController() ;

  @override
  Widget build(BuildContext context) {
    return Container(
                  padding: EdgeInsets.all(16),
                  // height: 300,
                  child: Column(
                    children: [
                      CustomTextForm(
                          hintText: "Title",
                          controller: titleController,
                          isSecured: false
                          ),
                         const  SizedBox(height: 10,),
                           CustomTextForm(
                          hintText: "Content",
                          controller: contentController,
                          isSecured: false,
                          edgeInsetsForContentPadding: const  EdgeInsets.all(50),
                          
                          ),

                          const SizedBox(height: 20,),
                          CustomElevatedButton(onPressed: (){}, title: "Add")

                    ],
                  ),
                );;
  }
}