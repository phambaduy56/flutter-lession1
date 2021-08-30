import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class nav extends StatefulWidget {
  const nav({Key? key}) : super(key: key);

  @override
  _navState createState() => _navState();
}

class _navState extends State<nav> {
  int _selectedIndex = 0;
  Color color_c = Color(0xff181725);
  List<Widget> _widgetOptions = <Widget>[
    //Home(),
    Text('Profile 1'),
    Text('Profile 2'),
    Text('Profile 3'),
    Text('Profile 4'),
    Text('Profile 5'),
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
      color_c = Color(0xff53B175);
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
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/cart.png'),
            activeIcon: Image.asset(
              'assets/images/cart.png',
              color: Color(0xff53B175),
            ),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/bookmark1.png'),
            activeIcon: Image.asset(
              'assets/images/bookmark1.png',
              color: Color(0xff53B175),
            ),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/user1.png'),
            activeIcon: Image.asset(
              'assets/images/user1.png',
              color: Color(0xff53B175),
            ),
            title: Text('Home'),
          ),
        ],
      ),
    );
  }
}
