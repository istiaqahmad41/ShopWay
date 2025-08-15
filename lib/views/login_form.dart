import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_way/widgets/custom_text_button.dart';
import 'package:shop_way/widgets/custom_textfield_widget.dart';

import '../widgets/custom_elevated_button.dart';

class loginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController loginEmailController = TextEditingController();
    TextEditingController loginPasswordController = TextEditingController();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Email Address", style: TextStyle(color: Colors.black)),
        const SizedBox(height: 5),

        CustomTextFieldWidget(textEditingController: loginEmailController),

        const SizedBox(height: 8),

        const Text("Password", style: TextStyle(color: Colors.black)),
        const SizedBox(height: 5),
        CustomTextFieldWidget(textEditingController: loginPasswordController),
        SizedBox(height: 3),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
         CustomTextButton(textcolor:Colors.black ,buttonName: 'Forget password?',)
          ],
        ),

        SizedBox(
          width: double.infinity,
          child: CustomElevatedButton(buttonName: 'Login', color: Color(0xFF0055B5), textColor: Colors.white, onpressed: () {  },)
        ),
      ],
    );
  }
}
