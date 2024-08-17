import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../customs/color_helper.dart'; // Assuming ColorHelper is defined in this path

class PaymentsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorHelper.themeBackColor,
      appBar: AppBar(
        backgroundColor: ColorHelper.themeBackColor,
        title: Text(
          "Payments",
          style: TextStyle(color: ColorHelper.mainFontColor),
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundColor: ColorHelper.themeGreyColor,
                child: Icon(Icons.calendar_today, color: ColorHelper.mainFontColor),
              ),
              title: Text("Scheduled transfers", style: TextStyle(color: ColorHelper.mainFontColor)),
              subtitle: Text("Manage transfers that are due to go out.", style: TextStyle(color: ColorHelper.themeGreyColor)),
              trailing: Icon(Icons.arrow_forward_ios, color: ColorHelper.secondaryFontColor),
              onTap: () {},
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: ColorHelper.themeGreyColor,
                child: Icon(Icons.swap_horiz, color: ColorHelper.mainFontColor),
              ),
              title: Text("Direct Debits", style: TextStyle(color: ColorHelper.mainFontColor)),
              subtitle: Text("1 active", style: TextStyle(color: ColorHelper.themeGreyColor)),
              trailing: Icon(Icons.arrow_forward_ios, color: ColorHelper.secondaryFontColor),
              onTap: () {},
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: ColorHelper.themeGreyColor,
                child: Icon(Icons.payment, color: ColorHelper.mainFontColor),
              ),
              title: Text("Payment requests", style: TextStyle(color: ColorHelper.mainFontColor)),
              subtitle: Text("Create and manage payments you've requested.", style: TextStyle(color: ColorHelper.themeGreyColor)),
              trailing: Icon(Icons.arrow_forward_ios, color: ColorHelper.secondaryFontColor),
              onTap: () {},
            ),
            SizedBox(height: 16),
            Text(
              "Account details",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: ColorHelper.mainFontColor,
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b7/Flag_of_Europe.svg/320px-Flag_of_Europe.svg.png",
                ),
              ),
              title: Text("Euro", style: TextStyle(color: ColorHelper.mainFontColor)),
              subtitle: Text("IBAN, Swift/BIC", style: TextStyle(color: ColorHelper.themeGreyColor)),
              trailing: Icon(Icons.arrow_forward_ios, color: ColorHelper.secondaryFontColor),
              onTap: () {},
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://upload.wikimedia.org/wikipedia/en/a/a3/Flag_of_the_United_Kingdom.svg",
                ),
              ),
              title: Text("British Pound", style: TextStyle(color: ColorHelper.mainFontColor)),
              subtitle: Text("UK sort code, Account number", style: TextStyle(color: ColorHelper.themeGreyColor)),
              trailing: Icon(Icons.arrow_forward_ios, color: ColorHelper.secondaryFontColor),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
