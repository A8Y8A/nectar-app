import 'package:flutter/material.dart';
import 'package:nectar_app/presentation/screens/cart.dart';
import 'package:nectar_app/presentation/screens/explore.dart';
import 'package:nectar_app/utils/constant.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 1;

  static const List<Widget> _widgetOptions = <Widget>[
    //Explore(),
    Text('Search Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Explore(),
    Cart(),
    Text(' Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text(' Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  ];

  void _onItemTapped(int index) {
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
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_work_rounded,
            ),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.segment_rounded),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline_rounded),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_3_outlined),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.black,
        selectedItemColor: primaryColor,
        onTap: _onItemTapped,
      ),
    );
  }
}
