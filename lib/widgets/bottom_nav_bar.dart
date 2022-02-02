import 'package:flutter/material.dart';


class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

  int _selectedIndex = 0;
  bool UsingBottomNav = true;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      UsingBottomNav = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        backgroundColor: Colors.transparent,
        unselectedFontSize : 16,
        selectedFontSize: 20,
        iconSize : 20,
        selectedIconTheme: IconThemeData(color: Colors.amberAccent, size: 40),
        selectedItemColor: Colors.amberAccent,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        elevation: 20,
        type: BottomNavigationBarType.fixed,
        items:  <BottomNavigationBarItem>[
          new BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.view_headline_rounded),
            label: 'Order',
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.perm_identity_outlined),
            label: 'Profile',
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
        ],
      );
  }
}
