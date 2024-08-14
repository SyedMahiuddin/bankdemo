import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 SizedBox(width: 10,),
                  Container(
                    height: 35,width: 135,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(90),
                      color: Colors.green
                    ),
                    child: Center(
                      child: Text(
                        'Order a card',
                        style: TextStyle(color: Colors.black, fontSize: 18,fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Cards',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      'Physical card\n•••• 0611',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Icon(Icons.pin, color: Colors.green, size: 30),
                      SizedBox(height: 8),
                      Text('Show PIN', style: TextStyle(color: Colors.white)),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.credit_card, color: Colors.green, size: 30),
                      SizedBox(height: 8),
                      Text('Card details', style: TextStyle(color: Colors.white)),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.ac_unit, color: Colors.green, size: 30),
                      SizedBox(height: 8),
                      Text('Freeze card', style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.grey[800],
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Center(
                  child: Text(
                    'Add to Apple Wallet',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}