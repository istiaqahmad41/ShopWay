import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OptionButton extends StatelessWidget {
  Color textcolor;
  String buttonName;
  VoidCallback onPressed;
  OptionButton({super.key, required this.textcolor,
    required this.buttonName
  ,
  required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(buttonName, style: TextStyle(color: textcolor,fontWeight: FontWeight.bold)),
    );
  }
}
