import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return TextButton(
     onPressed: () {},
     child: Text(
       'Forget password?',
       style: TextStyle(color: Colors.black),
     ),
   );
  }

}