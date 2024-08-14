import 'package:bankdemo/views/home_screen.dart';
import 'package:bankdemo/views/send_money.dart';
import 'package:bankdemo/views/transfer_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavScreen extends StatefulWidget {
  @override
  _BottomNavScreenState createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    MyHomePage(),
    CardsScreen(),
    CardsScreen(),
    CardsScreen(),
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
        child: _screens[_selectedIndex]
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined, color: Colors.grey),
            activeIcon: Icon(Icons.home_outlined, color: Colors.green),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card_rounded, color: Colors.grey),
            activeIcon: Icon(Icons.credit_card_rounded, color: Colors.green),
            label: 'Card',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group_add_outlined, color: Colors.grey),
            activeIcon: Icon(Icons.group_add_outlined, color: Colors.green),
            label: 'Recipients',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.repeat, color: Colors.grey),
            activeIcon: Icon(Icons.repeat, color: Colors.green),
            label: 'Payments',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
      backgroundColor: Colors.black,
    );
  }
}