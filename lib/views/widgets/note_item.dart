import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 24,
        bottom: 24,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: Color(0xffFFCC80)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Text(
              "Flutter Tips",
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            subtitle: Padding(
              padding: EdgeInsets.only(top: 16  ),
              child: Text("build your career with tharwat samy ",
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.4), fontSize: 16)),
            ),
            trailing: IconButton(
                onPressed: () {},
                icon: Icon(
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
    );
  }
}
