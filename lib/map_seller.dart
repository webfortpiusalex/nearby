import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:nearby/theme/colors.dart';


final List<String> imagesList = [
  'https://cdn.pixabay.com/photo/2020/11/01/23/22/breakfast-5705180_1280.jpg',
  'https://cdn.pixabay.com/photo/2016/11/18/19/00/breads-1836411_1280.jpg',
  'https://cdn.pixabay.com/photo/2019/01/14/17/25/gelato-3932596_1280.jpg',
  'https://cdn.pixabay.com/photo/2017/04/04/18/07/ice-cream-2202561_1280.jpg',
];

final List<String> titles = [
  ' Coffee ',
  ' Bread ',
  ' Gelato ',
  ' Ice Cream ',
];



class map_seller extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<map_seller> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {


    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: Image.asset('assets/images/background.png').image,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        bottomNavigationBar: BottomNavigationBar(
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
        ),


        body:  SingleChildScrollView(
          child:  Column(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(40, 20, 20, 20),
                  child:
                  Column(
                    children: [



              ]),
        ),
      ]),
    )));
    /*),
    );*/
  }
}