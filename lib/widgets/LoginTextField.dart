import 'package:flutter/material.dart';

class LoginTextField extends StatelessWidget {
  final TextEditingController textEditingController;
String hintText;
  LoginTextField({
    Key? key,
    required this.textEditingController,
    required this.hintText
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300, // Set your desired width here
      child: TextField(

        controller: textEditingController,
        decoration:  InputDecoration(
          hintText: hintText,
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            borderSide: BorderSide(color: Colors.grey, width: 1),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Colors.grey, width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            borderSide: BorderSide(color: Colors.grey, width: 1),
          ),
          isDense: true,
        ),
      ),
    );
  }
}