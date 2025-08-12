import 'package:flutter/material.dart';

class LoginBottomSheet extends StatefulWidget {
  const LoginBottomSheet({super.key});

  @override
  State<LoginBottomSheet> createState() => _LoginBottomSheetState();
}

class _LoginBottomSheetState extends State<LoginBottomSheet> {
  int selectedIndex = 0; // 0 = Login, 1 = Sign Up

  final TextEditingController loginEmailController = TextEditingController();
  final TextEditingController loginPasswordController = TextEditingController();

  final TextEditingController signupUsernameController = TextEditingController();
  final TextEditingController signupEmailController = TextEditingController();
  final TextEditingController signupPasswordController = TextEditingController();

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
                gradient: const LinearGradient(
                  colors: [Color(0xFF114C99), Color(0xFF0055B5)],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _buildToggleButton("Log In", 0),
                  _buildToggleButton("Sign Up", 1),
                ],
              ),
            ),

            const SizedBox(height: 24),

            // Forms
            Expanded(
              child: SingleChildScrollView(
                child: selectedIndex == 0 ? _buildLoginForm() : _buildSignupForm(),
              ),
            ),

            const Divider(height: 24),

            // Admin Section
            TextButton.icon(
              onPressed: () {
                // Handle admin section click
                showDialog(
                  context: context,
                  builder: (_) => const AlertDialog(
                    title: Text("Admin Section"),
                    content: Text("Redirect to admin login screen or show admin-specific options."),
                  ),
                );
              },
              icon: const Icon(Icons.admin_panel_settings_outlined),
              label: const Text("Admin Section"),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildToggleButton(String text, int index) {
    bool isSelected = selectedIndex == index;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          color: isSelected ? Colors.white : Colors.transparent,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: isSelected ? Colors.black : Colors.white,
            fontSize: 16,
          ),
        ),
      ),
    );
  }

  Widget _buildLoginForm() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Email Address",style: TextStyle(color: Colors.black),),
        const SizedBox(height: 5),
        TextField(

          controller: loginEmailController,
          decoration: const InputDecoration(

            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            isDense: true
          ),
        ),
        const SizedBox(height: 8),

        const Text("Password",style: TextStyle(color: Colors.black),),
        const SizedBox(height: 5),
        TextField(
          controller: loginPasswordController,
          obscureText: true,
          decoration: const InputDecoration(
            hintText: "Enter your password",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            isDense: true,
          ),
        ),
        const SizedBox(height: 20),

        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              // Handle login
              print("Logging in with ${loginEmailController.text}");
            },
            child: const Text("Login"),
          ),
        ),
      ],
    );
  }

  Widget _buildSignupForm() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Username"),
        const SizedBox(height: 8),
        TextField(
          controller: signupUsernameController,
          decoration: const InputDecoration(
            hintText: "Enter your username",
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 16),

        const Text("Email"),
        const SizedBox(height: 8),
        TextField(
          controller: signupEmailController,
          decoration: const InputDecoration(
            hintText: "Enter your email",
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 16),

        const Text("Password"),
        const SizedBox(height: 8),
        TextField(
          controller: signupPasswordController,
          obscureText: true,
          decoration: const InputDecoration(
            hintText: "Create a password",
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 20),

        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              // Handle sign up
              print("Signing up with ${signupUsernameController.text}");
            },
            child: const Text("Sign Up"),
          ),
        ),
      ],
    );
  }
}
