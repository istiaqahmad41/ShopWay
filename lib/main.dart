
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_way/pages/home_screen.dart';
import 'package:shop_way/pages/signin_page.dart';
import 'package:shop_way/pages/signup_page.dart';
import 'package:shop_way/pages/splash_screen.dart';


void main() {
  runApp(

      MyApp()
  );
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
        "/Home": (context) => HomeScreen(),
        "/SignIn": (context) => SignInPage(),
        "/SignUp" : (context) => SignupPage()
      },
    );
  }
}
