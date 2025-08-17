import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:shop_way/controllers/controller.dart';
import 'package:shop_way/pages/signup_page.dart';

import 'package:shop_way/widgets/ForgetPasswordButton.dart';
import 'package:shop_way/widgets/LoginTextField.dart';
import 'package:shop_way/widgets/PrimaryButton.dart';

import '../widgets/OptionButton.dart';

class SignInPage extends StatelessWidget {
  SignInPage({super.key});

  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
 Controller controller = Controller();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/background.png',
            fit: BoxFit.cover,
          ),
          Center(

                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset('assets/images/bag.png', height: 60),
                      Image.asset('assets/images/app_name.png', height: 60),
                      SizedBox(height: 25),

                      LoginTextField(
                        textEditingController: email,
                        hintText: 'Email',
                      ),
                      SizedBox(height: 25),

                      LoginTextField(
                        textEditingController: password,
                        hintText: 'Password',
                      ),
                      Container(
                        width: 300,
                        alignment: Alignment.centerRight,
                        child: ForgetPasswordButton(
                          textcolor: Colors.black,
                          buttonName: 'Forget password?',
                        ),
                      ),
                      SizedBox(height: 10),

                      PrimaryButton(
                        buttonName: "Sign In",
                        onpressed: () {

                          controller.LoginAdmin(context, email.text.trim(), password.text.trim());

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
                            buttonName: "Sign Up", onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> SignupPage()));
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
