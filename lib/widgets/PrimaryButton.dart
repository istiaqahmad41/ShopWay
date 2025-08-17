import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String buttonName;
  final Color color;
  final Color textColor;
  final VoidCallback onpressed;
  final Gradient? gradient; // new optional gradient

  PrimaryButton({
    Key? key,
    required this.buttonName,
    required this.color,
    required this.textColor,
    required this.onpressed,
    this.gradient,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: ElevatedButton(
        onPressed: onpressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: gradient == null ? color : Colors.transparent,
          foregroundColor: textColor,
          padding: EdgeInsets.zero,
        ),
        child: Ink(
          decoration: BoxDecoration(
            gradient: gradient,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 24),
            child: Text(
              buttonName,
              style: TextStyle(color: textColor,fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}
