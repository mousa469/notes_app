import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key, required this.customAppBarIcon});

  final  IconData customAppBarIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white.withOpacity(0.1)),
      width: 37,
      height: 37,
      child:  Center(
        child: Icon(
          customAppBarIcon,
          color: Colors.white,
        ),
      ),
    );
  }
}
