import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  late String hinttext;
  late Icon icon;

  CustomTextField({Key? key, required this.hinttext, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        hintText: hinttext,
        prefixIcon: icon,
      ),
    );
  }
}
