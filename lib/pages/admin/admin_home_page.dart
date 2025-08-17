import 'package:flutter/material.dart';
import 'package:shop_way/pages/admin/products_page.dart';
import 'package:shop_way/pages/admin/settings_page.dart';
import 'package:shop_way/pages/admin/subadmin_page.dart';

import 'activity_page.dart';
import 'dashboard_page.dart';

class AdminHomePage extends StatefulWidget {
  final String username;
  final String email;
  final String password;
  final String adminId;

  const AdminHomePage({
    super.key,
    required this.username,
    required this.email,
    required this.password,
    required this.adminId,
  });

  @override
  State<AdminHomePage> createState() => _AdminHomePageState();
}

class _AdminHomePageState extends State<AdminHomePage> {
  int _currentIndex = 0;


  final List<Widget> _pages = [
    DashboardPage(),
    ProductsPage(),
    SubAdminPage(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.dashboard),
              onPressed: () => setState(() => _currentIndex = 0),
            ),
            IconButton(
              icon: Icon(Icons.shopping_bag),
              onPressed: () => setState(() => _currentIndex = 1),
            ),
            IconButton(
              icon: Icon(Icons.group),
              onPressed: () => setState(() => _currentIndex = 2),
            ),

            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () => setState(() => _currentIndex = 3),
            ),
          ],
        ),
      ),

    );
  }
}
