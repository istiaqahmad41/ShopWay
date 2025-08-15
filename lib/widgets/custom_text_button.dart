import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  Color textcolor;
  String buttonName;
   CustomTextButton({super.key, required this.textcolor,
   required this.buttonName});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(buttonName, style: TextStyle(color: textcolor)),
    );
  }
}
