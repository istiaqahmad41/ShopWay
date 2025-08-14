import 'package:flutter/material.dart';
import '../views/login_bottom_sheet.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double sheetHeight = MediaQuery.of(context).size.height * 0.4; // height of bottom sheet

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background image
          Image.asset('assets/images/bc.png', fit: BoxFit.cover),

          // Centered content in top section only
          Positioned(
            top: MediaQuery.of(context).size.height * 0.1, //
            // pushes content higher, adjust -60 for fine tuning
            left: 0,
            right: 0,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset('assets/images/logo.png', height: 50),
                const SizedBox(height: 5),
                Image.asset('assets/images/welcome_back.png', height: 50),
                const SizedBox(height: 5),
                Image.asset('assets/images/tagline.png', height: 32),
              ],
            ),
          ),

          // Bottom sheet
          LoginBottomSheet(),
        ],
      ),
    );
  }
}
