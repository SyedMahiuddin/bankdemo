import 'package:bankdemo/views/home_screen.dart';
import 'package:bankdemo/views/recipent_screen.dart';
import 'package:bankdemo/views/send_money.dart';
import 'package:bankdemo/views/transfer_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: ColorHelper.themeBackColor,
          border: Border(
            top: BorderSide(
              color: ColorHelper.themeGreyColor.withOpacity(0.5), // Color of the top border
              width: 1.0, // Thickness of the top border
            ),
          ),

        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: ColorHelper.themeBackColor, // Set background color
          elevation: 0, // Remove elevation to prevent shadow that may cause a white background
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
      ),
      backgroundColor: ColorHelper.themeBackColor,
    );
  }
}
