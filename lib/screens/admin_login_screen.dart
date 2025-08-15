import 'package:flutter/material.dart';
import 'package:shop_way/screens/admin_register_screen.dart';
import 'package:shop_way/widgets/custom_elevated_button.dart';
import 'package:shop_way/widgets/custom_text_button.dart';
import 'package:shop_way/widgets/custom_textfield_widget.dart';

import '../widgets/custom_admin_textfield_widget.dart';

class AdminLoginScreen extends StatefulWidget {
  const AdminLoginScreen({super.key});

  @override
  State<AdminLoginScreen> createState() => _AdminLoginScreenState();
}

class _AdminLoginScreenState extends State<AdminLoginScreen> {
  final TextEditingController adminEmailController = TextEditingController();
  final TextEditingController adminPasswordController = TextEditingController();

  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background Image
          Image.asset(
            'assets/images/bc.png',
            fit: BoxFit.cover,
          ),

          // Foreground UI
          SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: screenHeight * 0.05),

                    // Logo Row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/logo.png', height: 70),
                        const SizedBox(width: 8),
                        Image.asset('assets/images/shop_way.png', height: 40),
                      ],
                    ),

                    const SizedBox(height: 25),

                    // Admin login image
                    Image.asset(
                      'assets/images/admin_login.png',
                      width: screenWidth * 0.7,
                    ),

                    const SizedBox(height: 40),

                    // Email Label
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Email Address",
                        style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    ),
                    const SizedBox(height: 6),

                    // Email TextField
                    CustomAdminTextfieldWidget(controller: adminEmailController,),

                    const SizedBox(height: 20),

                    // Password Label
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Password",
                        style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    ),
                    const SizedBox(height: 6),

                    // Password TextField with toggle
                    CustomAdminTextfieldWidget(controller: adminPasswordController,),

                    const SizedBox(height: 30),

                    // Login Button
                    SizedBox(
                      width: double.infinity,
                      child: CustomElevatedButton(buttonName: 'Login',color: Color(0xFFFBC02D), textColor: Colors.black, onpressed: () {  },)
                    ),

                    const SizedBox(height: 16),

                    // Forgot password
                    TextButton(
                      onPressed: () {
                        // Forgot password logic
                      },
                      child: CustomTextButton(textcolor: Colors.white, buttonName: 'Forget password?')
                    ),

                    // Sign up
                    TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => AdminRegisterScreen()));
                      },
                      child: const Text(
                        "Not registered? Sign up",
                        style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
