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

  // Screens for each tab
  final List<Widget> _pages = [
    DashboardPage(),
    ProductsPage(),
    SubAdminPage(),
    ActivityPage(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex], // Show current tab content
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color(0xFFFF526C),
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard_rounded),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: 'Products',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: 'Sub Admins',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notes),
            label: 'Activity',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
