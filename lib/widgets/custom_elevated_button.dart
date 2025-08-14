

import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return ElevatedButton(
      onPressed: () {
        // Handle login
        //print("Logging in with ${loginEmailController.text}");
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(
          0xFF0055B5,
        ), // <-- Change to your desired color
        foregroundColor: Colors.white,
      ),
      child: const Text("Login"),
    );
  }

}