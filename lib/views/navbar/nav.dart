import 'package:flutter/material.dart';
import 'package:lession_01/views/screen/account.dart';
import 'package:lession_01/views/screen/cart.dart';
import 'package:lession_01/views/screen/explore.dart';
import 'package:lession_01/views/screen/favorurite.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lession_01/views/screen/home.dart';

class nav extends StatefulWidget {
  const nav({Key? key}) : super(key: key);

  @override
  _navState createState() => _navState();
}

class _navState extends State<nav> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    Home(),
    Explore(),
    Cart(),
    Favorurite(),
    Account(),
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color(0xff53B175),
        //selectedIconTheme: SelectedIconTheme(Co),
        unselectedItemColor: Color(0xff181725),
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/store1.png',
              color: Color(0xff181725),
            ),
            activeIcon: Image.asset(
              'assets/images/store1.png',
              color: Color(0xff53B175),
            ),
            title: Text('Shop'),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/find.png',
            ),
            activeIcon: Image.asset(
              'assets/images/find.png',
              color: Color(0xff53B175),
            ),
            title: Text('Explore'),
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/cart.png'),
            activeIcon: Image.asset(
              'assets/images/cart.png',
              color: Color(0xff53B175),
            ),
            title: Text('Cart'),
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/bookmark1.png'),
            activeIcon: Image.asset(
              'assets/images/bookmark1.png',
              color: Color(0xff53B175),
            ),
            title: Text('Favorites'),
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/user1.png'),
            activeIcon: Image.asset(
              'assets/images/user1.png',
              color: Color(0xff53B175),
            ),
            title: Text('Account'),
          ),
        ],
      ),
    );
  }
}
