import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextFieldWidget extends StatelessWidget{
 TextEditingController textEditingController = TextEditingController();
   CustomTextFieldWidget ({
    Key? key,
    required this.textEditingController
}) : super(key: key);



  @override
  Widget build(BuildContext context) {
   return TextField(

      controller: textEditingController,
      decoration: const InputDecoration(

          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            borderSide: BorderSide(color: Colors.grey, width: 2),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            borderSide: BorderSide(color: Colors.grey, width: 2),
          ),
          isDense: true
      ),
    );
  }

}