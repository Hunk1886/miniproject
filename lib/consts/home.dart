import 'package:flutter/material.dart';
import 'package:mini12/consts/ceemara.dart';
import 'package:mini12/consts/poto.dart';
import 'package:mini12/consts/warn.dart';

import 'HomeScreen.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  int _selectIndex = 0;
  List _wigetoption = [
    HomeScreen(),
    mywarn(),
    ProfileScreen(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: _wigetoption.elementAt(_selectIndex),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectIndex,
          showUnselectedLabels: true,
          selectedItemColor: Color(0xFF146ABC),
          unselectedItemColor: Colors.black,
          iconSize: 28,
          onTap: _onItemTapped,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.email), label: "แจ้งเตือน"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "บัญชี"),
          ]),
    );
  }
}
