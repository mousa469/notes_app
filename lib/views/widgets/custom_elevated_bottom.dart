import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton(
      {super.key, required this.onPressed, required this.title});
  final VoidCallback onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: const ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(Colors.red),
        ),
        onPressed: onPressed,
        child: Text(
          title,
          style: const TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
        ),
      ),
    );
  }
}
