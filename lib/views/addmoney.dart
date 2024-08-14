import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddMoneyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.close, color: Colors.green),
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
            Text('Add money',style: TextStyle(fontSize:25,fontWeight: FontWeight.bold,color: Colors.white),),
            SizedBox(height: 20,),
            Text(
              'Amount to add to Wise',style: TextStyle(fontSize:15,color: Colors.white),),
            SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: TextField(
                      style: TextStyle(fontSize: 24, color: Colors.white),
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: '0',
                        hintStyle: TextStyle(color: Colors.grey),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Icon(Icons.attach_money, color: Colors.green),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Paying with',
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.add, color: Colors.white),
                      SizedBox(width: 10),
                      Text('Payment method',
                          style: TextStyle(color: Colors.white)),
                    ],
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text('Add', style: TextStyle(color: Colors.green)),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Currency to pay in',
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Choose currency', style: TextStyle(color: Colors.green)),
                  Icon(Icons.keyboard_arrow_down, color: Colors.green),
                ],
              ),
            ),
            Spacer(),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey[800],
              ),
              padding: EdgeInsets.symmetric(vertical: 16),
              alignment: Alignment.center,
              child: Text(
                'Continue',
                style: TextStyle(color: Colors.grey[600], fontSize: 18),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}