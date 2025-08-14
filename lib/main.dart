import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_way/screens/home_screen.dart';
import 'package:shop_way/screens/login_screen.dart';
import 'package:shop_way/screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: {
        "/home": (context) => HomeScreen(),
        "/login": (context) => LoginScreen(),
      },
    );
  }
}
