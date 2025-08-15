import 'package:flutter/material.dart';

class CustomAdminTextfieldWidget extends StatelessWidget {

  TextEditingController controller = TextEditingController();
 CustomAdminTextfieldWidget({super.key
 ,
   required this.controller

 });

  @override
  Widget build(BuildContext context) {
    return  TextField(
      controller: controller,
      style: const TextStyle(color: Colors.black),
      decoration: InputDecoration(

        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(color: Colors.white),
        ),
        isDense: true,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      ),
    );
  }
}
