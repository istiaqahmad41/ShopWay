import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_way/widgets/custom_textfield_widget.dart';

class signupForm extends StatefulWidget {
  @override
  State<signupForm> createState() => _signupFormState();
}

class _signupFormState extends State<signupForm> {
  TextEditingController signupUsernameController = TextEditingController();
  TextEditingController signupEmailController = TextEditingController();
  TextEditingController signupPasswordController = TextEditingController();
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Username", style: TextStyle(color: Colors.black)),
          const SizedBox(height: 8),
         CustomTextFieldWidget(textEditingController: signupUsernameController),
          const SizedBox(height: 16),

          const Text("Email", style: TextStyle(color: Colors.black)),
          const SizedBox(height: 8),
          CustomTextFieldWidget(textEditingController: signupEmailController),
          const SizedBox(height: 16),

          const Text("Password", style: TextStyle(color: Colors.black)),
          const SizedBox(height: 8),
        CustomTextFieldWidget(textEditingController: signupPasswordController),
          const SizedBox(height: 16),

          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Checkbox(
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value ?? false;
                  });
                },
                checkColor: Colors.white,
                fillColor: MaterialStateProperty.resolveWith<Color>((states) {
                  if (states.contains(MaterialState.selected)) {
                    return Colors.black;
                  }
                  return Colors.white;
                }),
                side: const BorderSide(
                  color: Colors.black,
                  width: 2,
                ),
              ),
              const Expanded(
                child: Text(
                  "I agree to the Terms & Conditions and Privacy Policy",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),

          const SizedBox(height: 12),

          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: isChecked
                  ? () {
                //print("Signing up with ${signupUsernameController.text}");
              }
                  : null,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF0055B5),
                foregroundColor: Colors.white,
                disabledBackgroundColor: Colors.grey.shade400,
                disabledForegroundColor: Colors.white,
              ),
              child: const Text("Create Account"),
            ),
          ),

          const SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text("or continue with", style: TextStyle(color: Colors.black)),
            ],
          ),

          const SizedBox(height: 16),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: OutlinedButton.icon(
                  onPressed: () {
                    print("Continue with Google");
                  },
                  icon: Image.asset("assets/images/google.png", height: 20),
                  label: const Text("Google"),
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.black,
                    side: const BorderSide(color: Colors.grey),
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: OutlinedButton.icon(
                  onPressed: () {
                    print("Continue with Facebook");
                  },
                  icon: Image.asset("assets/images/facebook.png", height: 20),
                  label: const Text("Facebook"),
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.black,
                    side: const BorderSide(color: Colors.grey),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}