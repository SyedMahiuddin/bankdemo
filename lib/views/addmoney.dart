import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../customs/color_helper.dart';

class AddMoneyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorHelper.themeBackColor,
        leading: IconButton(
          icon: Icon(Icons.close, color: ColorHelper.secondaryFontColor),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Add money',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: ColorHelper.mainFontColor,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Amount to add to Wise',
              style: TextStyle(fontSize: 15, color: ColorHelper.mainFontColor),
            ),
            SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: ColorHelper.themeGreyColor),
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: TextField(
                      style: TextStyle(fontSize: 24, color: ColorHelper.mainFontColor),
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: '0',
                        hintStyle: TextStyle(color: ColorHelper.themeGreyColor),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Icon(Icons.attach_money, color: ColorHelper.secondaryFontColor),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Paying with',
              style: TextStyle(color: ColorHelper.themeGreyColor),
            ),
            SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                color: ColorHelper.themeGreyColor,
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.add, color: ColorHelper.mainFontColor),
                      SizedBox(width: 10),
                      Text('Payment method', style: TextStyle(color: ColorHelper.mainFontColor)),
                    ],
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text('Add', style: TextStyle(color: ColorHelper.secondaryFontColor)),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Currency to pay in',
              style: TextStyle(color: ColorHelper.themeGreyColor),
            ),
            SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: ColorHelper.themeGreyColor),
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Choose currency', style: TextStyle(color: ColorHelper.secondaryFontColor)),
                  Icon(Icons.keyboard_arrow_down, color: ColorHelper.secondaryFontColor),
                ],
              ),
            ),
            Spacer(),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: ColorHelper.themeGreyColor,
              ),
              padding: EdgeInsets.symmetric(vertical: 16),
              alignment: Alignment.center,
              child: Text(
                'Continue',
                style: TextStyle(color: ColorHelper.mainFontColor, fontSize: 18),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: ColorHelper.themeBackColor,
    );
  }
}
