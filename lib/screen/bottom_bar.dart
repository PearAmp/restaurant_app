import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'package:restaurant_app/page/page1/first_page.dart';
import 'package:restaurant_app/page/page3/thirt_page.dart';
import 'package:restaurant_app/page/page4/fourth_page.dart';

import '../page/page2/second_page.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    //show Page On Tab
    FirstPage(),
    SeconPage(),
    ThirtPage(),
    FourthPage()
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Body
      body: Center(child: _widgetOptions[_selectedIndex]),

      //bottom tab
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: HexColor('#edf0eb'),
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        elevation: 10,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded),
              activeIcon: Icon(Icons.home_rounded),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.food_bank_rounded),
              activeIcon: Icon(Icons.food_bank_rounded),
              label: 'Restaurant'),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              activeIcon: Icon(Icons.search),
              label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.supervised_user_circle),
              activeIcon: Icon(Icons.supervised_user_circle),
              label: 'Profile'),
        ],
      ),
    );
  }
}
