import 'package:flutter/material.dart';
import 'package:shop_way/screens/admin_login_screen.dart';
import 'package:shop_way/views/login_form.dart';
import 'package:shop_way/views/signup_form.dart';
import 'package:shop_way/widgets/toogle_button.dart';

class LoginBottomSheet extends StatefulWidget {
  const LoginBottomSheet({super.key});

  @override
  State<LoginBottomSheet> createState() => _LoginBottomSheetState();
}

class _LoginBottomSheetState extends State<LoginBottomSheet> {
  int selectedIndex = 0; // 0 = Login, 1 = Sign Up

  Text terms = Text(
    "Terms & Conditions ",
    style: TextStyle(color: Colors.blue),
  );
  @override
  Widget build(BuildContext context) {
    double sheetHeight = MediaQuery.of(context).size.height * 0.7;

    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.infinity,
        height: sheetHeight,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 8,
            ),
          ],
        ),
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            const SizedBox(height: 20),

            // Toggle
            Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: Color(0xFF0055B5),

                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // _buildToggleButton("Log In", 0),
                  // _buildToggleButton("Sign Up", 1),
                  
                  ToggleButton(text: "Log In", isSelected: selectedIndex == 0, onTap: () {
            setState(() {
            selectedIndex = 0;
            });
            },




            ),

            ToggleButton(
              text: "Sign Up",
              isSelected: selectedIndex == 1,
              onTap: () {
                setState(() {
                  selectedIndex = 1;
                });
              },
            ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            // Forms
            Expanded(
              child: SingleChildScrollView(
                child: selectedIndex == 0 ? loginForm() : signupForm(),
              ),
            ),

            // Admin Section
            if (selectedIndex == 0)
              TextButton.icon(
                onPressed: () {
                  // Handle admin section click
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AdminLoginScreen()),
                  );
                },
                icon: Image.asset('assets/images/admin.png', height: 22),
                label: const Text(
                  "Admin Panel",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0055B5),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  // Widget _buildToggleButton(String text, int index) {
  //   bool isSelected = selectedIndex == index;
  //   return GestureDetector(
  //     onTap: () {
  //       setState(() {
  //         selectedIndex = index;
  //       });
  //     },
  //     child: AnimatedContainer(
  //       duration: const Duration(milliseconds: 200),
  //       padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
  //       decoration: BoxDecoration(
  //         color: isSelected ? Colors.white : Colors.transparent,
  //         borderRadius: BorderRadius.circular(30),
  //       ),
  //       child: Text(
  //         text,
  //         style: TextStyle(
  //           fontWeight: FontWeight.bold,
  //           color: isSelected ? Colors.black : Colors.white,
  //           fontSize: 16,
  //         ),
  //       ),
  //     ),
  //   );
  // }


}
