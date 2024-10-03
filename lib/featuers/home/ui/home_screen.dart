// ignore_for_file: library_private_types_in_public_api

import 'package:e_commerce/featuers/home/ui/widgets/icon_home_view.dart';
import 'package:e_commerce/featuers/profile/ui/profile_screen.dart';
import 'package:flutter/material.dart';

import '../../book_mark/ui/book_mark__screen.dart';
import '../../notification/ui/notification_screen.dart';
import 'widgets/bottom_navigation_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  final List<Widget> _screens = const [
    IconHomeView(),
    NotificationScreen(),
    BookMarkScreen(),
    ProfileScreen()
  ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomBar(
        selectedIndex: selectedIndex,
        onItemTapped: onItemTapped,
      ),
      body: _screens[selectedIndex], // Display the selected screen
    );
  }
}
