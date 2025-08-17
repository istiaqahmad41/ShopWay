import 'dart:async';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  double _logoOpacity = 0;
  double _logoScale = 0.8;
  double _textOpacity = 0;

  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 1), () {
      setState(() {
        _logoOpacity = 1;
        _logoScale = 1.0;
      });
    });

    Timer(Duration(seconds: 2), () {
      setState(() {
        _textOpacity = 1;
      });
    });

    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacementNamed(context, '/SignIn');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background image
          Image.asset('assets/images/background.png', fit: BoxFit.cover),

          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                AnimatedOpacity(
                  duration: Duration(milliseconds: 800),
                  opacity: _logoOpacity,
                  child: AnimatedScale(
                    duration: Duration(milliseconds: 800),
                    scale: _logoScale,
                    curve: Curves.easeOutBack,
                    child: Image.asset('assets/images/bag.png', height: 50),
                  ),
                ),
                SizedBox(height: 10),

                AnimatedOpacity(
                  duration: Duration(milliseconds: 800),
                  opacity: _textOpacity,
                  child: Column(
                    children: [
                      Image.asset('assets/images/app_name.png', height: 50),
                      SizedBox(height: 5),
                      Image.asset('assets/images/admin.png', height: 20),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
