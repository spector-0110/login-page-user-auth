import 'package:flutter/material.dart';

class IconTile extends StatelessWidget {
  IconTile({super.key, required this.imagePath});

  String imagePath;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(15),
        color: Colors.grey[200],
      ),
      child: Image.asset(
        imagePath,
        height: 40,
      ),
    );
  }
}
