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

    // Delay for smooth entrance animation
    Timer(Duration(seconds: 1), () {
      setState(() {
        _logoOpacity = 1;
        _logoScale = 1.0;
      });
    });

    // Animate the text after the logo
    Timer(Duration(seconds: 2), () {
      setState(() {
        _textOpacity = 1;
      });
    });

    // Navigate to login after splash duration
    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacementNamed(context, '/login');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background image
          Image.asset(
            'assets/images/background.png',
            fit: BoxFit.cover,
          ),

          // Centered content
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Logo animation
                AnimatedOpacity(
                  duration: Duration(milliseconds: 800),
                  opacity: _logoOpacity,
                  child: AnimatedScale(
                    duration: Duration(milliseconds: 800),
                    scale: _logoScale,
                    curve: Curves.easeOutBack,
                    child: Image.asset(
                      'assets/images/logo.png',
                      height: 50,
                    ),
                  ),
                ),
                SizedBox(height: 10),

                // Text/image tagline animation
                AnimatedOpacity(
                  duration: Duration(milliseconds: 800),
                  opacity: _textOpacity,
                  child: Image.asset(
                    'assets/images/shop_way.png',
                    height: 25,
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
