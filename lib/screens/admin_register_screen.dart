import 'package:flutter/material.dart';

import '../controllers/controller.dart';
import '../widgets/custom_admin_textfield_widget.dart';
import '../widgets/custom_elevated_button.dart';

class AdminRegisterScreen extends StatefulWidget {
  const AdminRegisterScreen({super.key});

  @override
  State<AdminRegisterScreen> createState() => _AdminRegisterScreenState();
}

class _AdminRegisterScreenState extends State<AdminRegisterScreen> {

  Controller controller = Controller();
  static TextEditingController adminUserNameController = TextEditingController();
  static TextEditingController adminEmailController = TextEditingController();
  static TextEditingController adminPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background Image
          Image.asset('assets/images/bc.png', fit: BoxFit.cover),

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

                    // Admin Signup Image
                    Image.asset(
                      'assets/images/admin_signup.png',
                      width: screenWidth * 0.7,
                    ),

                    const SizedBox(height: 40),

                    // Username
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Username",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(height: 6),
                    CustomAdminTextfieldWidget(controller: adminUserNameController),

                    const SizedBox(height: 20),

                    // Email
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Email Address",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(height: 6),
                    CustomAdminTextfieldWidget(controller: adminEmailController),

                    const SizedBox(height: 20),

                    // Password
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Password",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(height: 6),
                    CustomAdminTextfieldWidget(controller: adminPasswordController),

                    const SizedBox(height: 30),

                    // Sign Up Button
                    SizedBox(
                      width: double.infinity,
                      child: CustomElevatedButton(
                        buttonName: 'Sign Up',
                        color: Color(0xFFFBC02D),
                        textColor: Colors.black, onpressed: () async {

                        final username = adminUserNameController.text.trim();
                        final email = adminEmailController.text.trim();
                        final password = adminPasswordController.text.trim();
                        await controller.adminRegister(context,username,email,password,);
                      }
                      ),
                    ),

                    const SizedBox(height: 16),

                    // Already have an account
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        "Already have an account? Log in",
                        style: TextStyle(fontSize: 16, color: Colors.white),
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
