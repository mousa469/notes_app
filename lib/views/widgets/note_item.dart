import 'package:flutter/material.dart';
import 'package:notes/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, EditNoteView.id);
      },
      child: Container(
        padding: const EdgeInsets.only(
          top: 24,
          bottom: 24,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: const Color(0xffFFCC80)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: const Text(
                "Flutter Tips",
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Text("build your career with tharwat samy ",
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.4), fontSize: 14)),
              ),
              trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.delete,
                    size: 30,
                    color: Colors.black,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Text("may 21 ,2022",
                  style: TextStyle(color: Colors.black.withOpacity(0.4))),
            )
          ],
        ),
      ),
    );
  }
}
