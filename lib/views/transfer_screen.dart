import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../customs/color_helper.dart';

class CardsScreen extends StatelessWidget {
  List<String> cards=["https://milesopedia.com/wp-content/uploads/2024/05/carte-wise-1.png",
    "https://static.vecteezy.com/system/resources/thumbnails/009/384/393/small/credit-card-clipart-design-illustration-free-png.png",
    "https://www.meghnabank.com.bd/public/images/440830_Meghna-Gold-Card.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorHelper.themeBackColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: 10),
                  Container(
                    height: 35,
                    width: 135,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(90),
                      color: ColorHelper.secondaryFontColor,
                    ),
                    child: Center(
                      child: Text(
                        'Order a card',
                        style: TextStyle(
                          color: ColorHelper.themeBackColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
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
                  color: ColorHelper.mainFontColor,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 250,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Container(
                            height: 250,
                          width: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.black
                          ),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                            child: Image.network(cards[index], height: 250,
                              width: 300,fit: BoxFit.fill,),
                          ),
                        ),
                      );
                    }),
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
                      Icon(Icons.pin, color: ColorHelper.secondaryFontColor, size: 30),
                      SizedBox(height: 8),
                      Text('Show PIN', style: TextStyle(color: ColorHelper.mainFontColor)),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.credit_card, color: ColorHelper.secondaryFontColor, size: 30),
                      SizedBox(height: 8),
                      Text('Card details', style: TextStyle(color: ColorHelper.mainFontColor)),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.ac_unit, color: ColorHelper.secondaryFontColor, size: 30),
                      SizedBox(height: 8),
                      Text('Freeze card', style: TextStyle(color: ColorHelper.mainFontColor)),
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
                  color: ColorHelper.themeGreyColor,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Center(
                  child: Text(
                    'Add to Apple Wallet',
                    style: TextStyle(color: ColorHelper.mainFontColor, fontSize: 16),
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
