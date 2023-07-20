import 'package:cars_store/view/buy_car_screen.dart';
import 'package:cars_store/view/community_screen.dart';
import 'package:cars_store/view/home_screen.dart';
import 'package:cars_store/view/profile_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _index = 0;

  final tabs = [
    HomeScreen(),
    BuyCarScreen(),
    CommunityScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_index],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Color(0xff1DB854),
          unselectedItemColor: Color(0xff8E8E93),
          type: BottomNavigationBarType.fixed,
          currentIndex: _index,
          onTap: (index) {
            setState(() {
              _index = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Buy car",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat_outlined),
              label: "Community",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: "Profile",
            ),
          ]),
    );
  }
}
