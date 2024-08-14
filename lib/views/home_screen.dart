import 'dart:ui';
import 'package:bankdemo/views/addmoney.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              backgroundColor: Colors.grey[800],
              child: Text("MS", style: TextStyle(color: Colors.white)),
            ),
            Text("Earn A\$145", style: TextStyle(color: Colors.green)),
            Icon(Icons.remove_red_eye_outlined, color: Colors.green),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Total balance",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            SizedBox(height: 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "**** AUD",
                  style: TextStyle(color:Colors.white,fontSize: 28, fontWeight: FontWeight.bold),
                ),
                Icon(Icons.show_chart, color: Colors.grey),
              ],
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Get.to(() => AddMoneyScreen(),
                      transition: Transition.downToUp,
                      duration: Duration(milliseconds: 400),
                    );
                  },
                  borderRadius: BorderRadius.circular(90),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(90),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 14, horizontal: 22),
                    child: Text("Send", style: TextStyle(color: Colors.white)),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Get.to(() => AddMoneyScreen(),
                          transition: Transition.downToUp,
                          duration: Duration(milliseconds: 400),
                        );
                      },
                      borderRadius: BorderRadius.circular(90),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[800],
                          borderRadius: BorderRadius.circular(90),
                        ),
                        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.add, color: Colors.green),
                            SizedBox(width: 8),
                            Text("Add money", style: TextStyle(color: Colors.green)),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 5), // spacing between buttons
                    InkWell(
                      onTap: () {
                        // Handle request tap
                      },
                      borderRadius: BorderRadius.circular(90),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[800],
                          borderRadius: BorderRadius.circular(90),
                        ),
                        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.arrow_downward, color: Colors.green),
                            SizedBox(width: 8),
                            Text("Request", style: TextStyle(color: Colors.green)),
                          ],
                        ),
                      ),
                    ),
                  ],
                )

              ],
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: Card(
                    color: Colors.grey[900],
                    child: ListTile(
                      leading: CircleAvatar(backgroundImage: NetworkImage("https://uxwing.com/wp-content/themes/uxwing/download/flags-landmarks/australia-flag-icon.png"),),
                      title: Text("AUD", style: TextStyle(color: Colors.white)),
                      subtitle: Text("**** 14821", style: TextStyle(color: Colors.white)),
                    ),
                  ),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: Card(
                    color: Colors.grey[900],
                    child: ListTile(
                      leading: CircleAvatar(backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/f/f9/Flag_of_Bangladesh.svg/2560px-Flag_of_Bangladesh.svg.png"),),
                      title: Text("BDT", style: TextStyle(color: Colors.white)),
                      subtitle: Text("****", style: TextStyle(color: Colors.white)),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Text(
              "Transactions",
              style: TextStyle(color:Colors.white,fontSize: 18, fontWeight: FontWeight.bold),
            ),
            ListTile(
              leading: Icon(Icons.arrow_downward, color: Colors.white),
              title: Text("MR MD SHADMAN S...", style: TextStyle(color: Colors.white)),
              subtitle: Text("Today", style: TextStyle(color: Colors.grey)),
              trailing: Text("**** AUD", style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              leading: Icon(Icons.arrow_upward, color: Colors.white),
              title: Text("CLV Melbourne PT...", style: TextStyle(color: Colors.white)),
              subtitle: Text("Sent • Today", style: TextStyle(color: Colors.grey)),
              trailing: Text("**** AUD", style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}
