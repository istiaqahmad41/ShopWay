import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../pages/admin/admin_home_page.dart';


class Controller {


  // Register Admin
  Future<void> adminRegister(
    BuildContext context,
    String username,
    String email,
    String password,
  ) async {
    if (username.isEmpty || email.isEmpty || password.isEmpty) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("All fields are required")));
      return;
    }

    final url = Uri.parse(
      'http://192.168.1.104/PublicKeyPass_AsForeignKey/admin_register.php',
    );

    try {
      final response = await http.post(
        url,
        body: {'username': username, 'email': email, 'password': password},
      );

      if (response.statusCode == 200) {
        final jsonResponse = json.decode(response.body);

        if (jsonResponse['success']) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                jsonResponse['message'] ?? "Registered successfully!",
              ),
            ),
          );

          Navigator.pop(context);
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(jsonResponse['message'] ?? "Registration failed"),
            ),
          );
        }
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Server error: ${response.statusCode}")),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Something went wrong. Try again.")),
      );
      print('Request failed: $e');
    }
  }



  // Login Admin
  Future<void> LoginAdmin(
      BuildContext context,
      String email,
      String password,
      ) async {

    try {
      final response = await http.post(
        Uri.parse('http://192.168.1.104/PublicKeyPass_AsForeignKey/login.php'),
        body: {
          'email':email,
          'password': password,
          'role': 'admin',
        },
      );



      final data = json.decode(response.body);
      print(data);

      if (data['status'] == 'success') {

        final role = data['role'];
        final email = data['email'];
        final username = data['username'];
        final adminId = data['id'].toString();

        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => AdminHomePage(username: username, email: email, password: password, adminId: adminId),
          ),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(data['message'] ?? 'Login failed')),
        );
      }
    } catch (e) {

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Something went wrong. Please try again.')),
      );
    }




  }







}
