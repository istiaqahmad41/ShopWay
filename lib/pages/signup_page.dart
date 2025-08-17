import 'package:flutter/material.dart';
import 'package:shop_way/controllers/controller.dart';
import '../widgets/LoginTextField.dart';
import '../widgets/OptionButton.dart';
import '../widgets/PrimaryButton.dart';

class SignupPage extends StatelessWidget {
  TextEditingController username = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  Controller controller = Controller();

  SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset('assets/images/background.png', fit: BoxFit.cover),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/bag.png', height: 60),
                Image.asset('assets/images/app_name.png', height: 60),
                SizedBox(height: 25),
                LoginTextField(
                  textEditingController: username,
                  hintText: 'Username',
                ),
                SizedBox(height: 25),
                LoginTextField(textEditingController: email, hintText: 'Email'),
                SizedBox(height: 25),

                LoginTextField(
                  textEditingController: password,
                  hintText: 'Password',
                ),

                SizedBox(height: 25),
                PrimaryButton(
                  buttonName: "Sign Up",
                  onpressed: () {
                    controller.adminRegister(
                      context,
                      username.text.trim(),
                      email.text.trim(),
                      password.text.trim(),
                    );
                  },
                  textColor: Colors.black,
                  gradient: LinearGradient(
                    colors: [Color(0xFFFF526C), Color(0xFFFFE261)],
                  ),
                  color: Colors.transparent,
                ),

                SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?"),
                    OptionButton(
                      textcolor: Colors.black,
                      buttonName: "Sign In",
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
