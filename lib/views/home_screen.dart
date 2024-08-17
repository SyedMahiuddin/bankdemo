import 'dart:ui';
import 'package:bankdemo/views/new_request.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import '../customs/color_helper.dart';
import 'addmoney.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorHelper.themeBackColor,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              backgroundColor: ColorHelper.themeGreyColor,
              child: Text("MS", style: TextStyle(color: ColorHelper.mainFontColor)),
            ),
            Icon(Icons.remove_red_eye_outlined, color: ColorHelper.secondaryFontColor),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Total Balance and Actions
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: ColorHelper.themeGreyColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Total balance", style: TextStyle(fontSize: 16, color: ColorHelper.mainFontColor)),
                      SizedBox(height: 4),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "**** AUD",
                            style: TextStyle(
                              color: ColorHelper.mainFontColor,
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(Icons.show_chart, color: ColorHelper.themeGreyColor),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16),
            
                // Currency Cards in a Grid View
                GridView.count(
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  children: [
                    Card(
                      color: ColorHelper.themeBackColor,
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://uxwing.com/wp-content/themes/uxwing/download/flags-landmarks/australia-flag-icon.png"),
                        ),
                        title: Text("AUD", style: TextStyle(color: ColorHelper.mainFontColor)),
                        subtitle: Text("**** 14821", style: TextStyle(color: ColorHelper.mainFontColor)),
                      ),
                    ),
                    Card(
                      color: ColorHelper.themeBackColor,
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f9/Flag_of_Bangladesh.svg/2560px-Flag_of_Bangladesh.svg.png"),
                        ),
                        title: Text("BDT", style: TextStyle(color: ColorHelper.mainFontColor)),
                        subtitle: Text("****", style: TextStyle(color: ColorHelper.mainFontColor)),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
            
                // Action Buttons (Send, Add Money, Request)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Get.to(() => AddMoneyScreen(),
                              transition: Transition.downToUp,
                              duration: Duration(milliseconds: 400));
                        },
                        borderRadius: BorderRadius.circular(90),
                        child: Container(
                          decoration: BoxDecoration(
                            color: ColorHelper.secondaryFontColor,
                            borderRadius: BorderRadius.circular(90),
                          ),
                          padding: EdgeInsets.symmetric(vertical: 14, horizontal: 22),
                          child: Center(
                            child: Text("Send", style: TextStyle(color: ColorHelper.mainFontColor)),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Get.to(() => AddMoneyScreen(),
                              transition: Transition.downToUp,
                              duration: Duration(milliseconds: 400));
                        },
                        borderRadius: BorderRadius.circular(90),
                        child: Container(
                          decoration: BoxDecoration(
                            color: ColorHelper.themeGreyColor,
                            borderRadius: BorderRadius.circular(90),
                          ),
                          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.add,size: 15, color: ColorHelper.secondaryFontColor),
                              SizedBox(width: 2),
                              Text("Add money", style: TextStyle(fontSize:11,color: ColorHelper.secondaryFontColor)),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Get.to(() => NewRequestScreen(),
                              transition: Transition.downToUp,
                              duration: Duration(milliseconds: 400));
                        },
                        borderRadius: BorderRadius.circular(90),
                        child: Container(
                          decoration: BoxDecoration(
                            color: ColorHelper.themeGreyColor,
                            borderRadius: BorderRadius.circular(90),
                          ),
                          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.arrow_downward, size:15,color: ColorHelper.secondaryFontColor),
                              SizedBox(width: 8),
                              Text("Request", style: TextStyle(fontSize:13,color: ColorHelper.secondaryFontColor)),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
            
                // Transaction Section
                Text(
                  "Transactions",
                  style: TextStyle(
                    color: ColorHelper.mainFontColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Card(
                  color: ColorHelper.themeBackColor,
                  child: ListTile(
                    leading: Icon(Icons.arrow_downward, color: ColorHelper.mainFontColor),
                    title: Text("MR MD SHADMAN S...", style: TextStyle(color: ColorHelper.mainFontColor)),
                    subtitle: Text("Today", style: TextStyle(color: ColorHelper.mainFontColor)),
                    trailing: Text("**** AUD", style: TextStyle(color: ColorHelper.mainFontColor)),
                  ),
                ),
                Card(
                  color: ColorHelper.themeBackColor,
                  child: ListTile(
                    leading: Icon(Icons.arrow_upward, color: ColorHelper.mainFontColor),
                    title: Text("CLV Melbourne PT...", style: TextStyle(color: ColorHelper.mainFontColor)),
                    subtitle: Text("Sent • Today", style: TextStyle(color: ColorHelper.mainFontColor)),
                    trailing: Text("**** AUD", style: TextStyle(color: ColorHelper.mainFontColor)),
                  ),
                ),
            
                // Additional Info Section
                SizedBox(height: 16),
                Text(
                  "Recent Activities",
                  style: TextStyle(
                    color: ColorHelper.mainFontColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Card(
                  color: ColorHelper.themeBackColor,
                  child: ListTile(
                    leading: Icon(Icons.local_offer, color: ColorHelper.mainFontColor),
                    title: Text("Subscription Payment", style: TextStyle(color: ColorHelper.mainFontColor)),
                    subtitle: Text("Today, 12:30 PM", style: TextStyle(color: ColorHelper.mainFontColor)),
                    trailing: Text("-15 AUD", style: TextStyle(color: Colors.redAccent)),
                  ),
                ),
                SizedBox(height: 10,),
                Card(
                  color: ColorHelper.themeGreyColor.withOpacity(0.5),
                  elevation: 2,
                  child: SizedBox(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Exchange Rates Title
                          Text(
                            "Exchange rates",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: ColorHelper.mainFontColor,
                            ),
                          ),
                          SizedBox(height: 16),
                          Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: ColorHelper.themeGreyColor,
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: TextField(
                              style: TextStyle(color: ColorHelper.mainFontColor),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "You send",
                                hintStyle: TextStyle(color: ColorHelper.mainFontColor),
                              ),
                              keyboardType: TextInputType.number,
                            ),
                          ),
                          SizedBox(height: 16),
                  
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        backgroundImage: NetworkImage(
                                          "https://uxwing.com/wp-content/themes/uxwing/download/flags-landmarks/australia-flag-icon.png",
                                        ),
                                      ),
                                      SizedBox(width: 8),
                                      Text(
                                        "AUD → USD",
                                        style: TextStyle(fontSize: 16, color: ColorHelper.mainFontColor),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    "66.24",
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      color: ColorHelper.mainFontColor,
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: ColorHelper.themeGreyColor,
                                  shape: CircleBorder(),
                                  padding: EdgeInsets.all(16),
                                ),
                                child: Text("Send", style: TextStyle(color: ColorHelper.secondaryFontColor)),
                              ),
                            ],
                          ),
                          SizedBox(height: 16),
                  
                          // Footer Text
                          Text(
                            "These amounts don't include fees. Last updated: Wednesday, August 14, 2024 at 6:41 PM",
                            style: TextStyle(fontSize: 12, color: ColorHelper.mainFontColor),
                          ),
                  
                  
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  "Do more with us",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(

                      fontSize: 24,fontWeight: FontWeight.bold, color: ColorHelper.mainFontColor),
                ),
                SizedBox(height: 8,),
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: Container(
                          height: 280,width: 180,
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(14)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width:140,
                                      child: Text(
                                        "Set up Direct Debits",
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(

                                            fontSize: 18,fontWeight: FontWeight.bold, color: ColorHelper.themeBackColor),
                                      ),
                                    ),
                                    Icon(Icons.cancel_outlined)
                                  ],
                                ),
                                Image.network("https://wise.com/imaginary-v2/images/3d7eb8b789abe8466b76ccd66ce9eb1b-megaphone-Medium-2x.png", height: 120,width: 100,)
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      backgroundColor: ColorHelper.themeBackColor,
    );
  }
}
