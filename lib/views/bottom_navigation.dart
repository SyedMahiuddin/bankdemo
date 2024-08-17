import 'package:bankdemo/views/home_screen.dart';
import 'package:bankdemo/views/recipent_screen.dart';
import 'package:bankdemo/views/send_money.dart';
import 'package:bankdemo/views/transfer_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../customs/color_helper.dart';

class BottomNavScreen extends StatefulWidget {
  @override
  _BottomNavScreenState createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    MyHomePage(),
    CardsScreen(),
    RecipientsScreen(),
    PaymentsScreen(),
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
        child: _screens[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: ColorHelper.mainFontColor,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined, color: ColorHelper.themeGreyColor),
            activeIcon: Icon(Icons.home_outlined, color: ColorHelper.secondaryFontColor),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card_rounded, color: ColorHelper.themeGreyColor),
            activeIcon: Icon(Icons.credit_card_rounded, color: ColorHelper.secondaryFontColor),
            label: 'Card',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group_add_outlined, color: ColorHelper.themeGreyColor),
            activeIcon: Icon(Icons.group_add_outlined, color: ColorHelper.secondaryFontColor),
            label: 'Recipients',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.repeat, color: ColorHelper.themeGreyColor),
            activeIcon: Icon(Icons.repeat, color: ColorHelper.secondaryFontColor),
            label: 'Payments',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: ColorHelper.secondaryFontColor,
        unselectedItemColor: ColorHelper.themeGreyColor,
        onTap: _onItemTapped,
      ),
      backgroundColor: ColorHelper.themeBackColor,
    );
  }
}
