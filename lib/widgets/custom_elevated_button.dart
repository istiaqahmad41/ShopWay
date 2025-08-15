

import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget{

  String buttonName ;
  Color  color;
  Color textColor;
  VoidCallback onpressed;

  CustomElevatedButton ({
    Key? key,
    required this.buttonName,
    required this.color,
    required this.textColor, required this.onpressed


  }) : super(key: key);





  @override
  Widget build(BuildContext context) {
   return ElevatedButton(
      onPressed: onpressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: color, // <-- Change to your desired color
        foregroundColor: Colors.white,
      ),
      child:  Text(buttonName,style: TextStyle(color: textColor ),),
    );
  }

}