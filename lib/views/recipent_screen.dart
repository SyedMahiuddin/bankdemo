import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../customs/color_helper.dart'; // Assuming ColorHelper is defined in this path

class RecipientsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorHelper.themeBackColor,
      appBar: AppBar(
        backgroundColor: ColorHelper.themeBackColor,
        title: Text(
          "Recipients",
          style: TextStyle(color: ColorHelper.mainFontColor),
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              decoration: BoxDecoration(
                color: ColorHelper.themeBackColor,
                borderRadius: BorderRadius.circular(30.0),
                border:Border.all(color: Colors.white)
              ),
              child: Row(
                children: [
                  Icon(Icons.search, color: ColorHelper.mainFontColor),
                  SizedBox(width: 8.0),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Name, @Wisetag, email, phone",
                        hintStyle: TextStyle(color: ColorHelper.themeGreyColor),
                      ),
                      style: TextStyle(color: ColorHelper.mainFontColor),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: ColorHelper.themeGreyColor,
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(
                      "https://wise.com/imaginary-v2/images/ce1d0fe1a8beb1b786a045e73884d2bd-magnifying-glass-Medium-1x.png",
                    height: 120,width: 110,
                    ),
                  SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Have friends who use Wise?",
                          style: TextStyle(
                            color: ColorHelper.mainFontColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "Sync your phonebook contacts to send to them, fast.",
                          style: TextStyle(color: ColorHelper.mainFontColor),
                        ),
                        SizedBox(height: 8),
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            "Sync contacts",
                            style: TextStyle(
                              color: ColorHelper.secondaryFontColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Icon(Icons.close, color: ColorHelper.secondaryFontColor),
                ],
              ),
            ),
            SizedBox(height: 16),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: ColorHelper.themeGreyColor,
                child: Icon(Icons.add, color: ColorHelper.mainFontColor),
              ),
              title: Text("Add a recipient", style: TextStyle(color: ColorHelper.mainFontColor)),
              trailing: Icon(Icons.arrow_forward_ios, color: ColorHelper.secondaryFontColor),
              onTap: () {},
            ),
            SizedBox(height: 16),
            Text(
              "Recent",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: ColorHelper.mainFontColor,
              ),
            ),
            SizedBox(height: 8),
            // Assuming the recent recipients are in a horizontal list
            SizedBox(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  RecipientItem(name: "Fahad Akash", initials: "FA", flagUrl: "https://upload.wikimedia.org/wikipedia/commons/f/f9/Flag_of_Bangladesh.svg"),
                  RecipientItem(name: "Fitflo", initials: "F", flagUrl: "https://upload.wikimedia.org/wikipedia/en/b/b9/Flag_of_Australia.svg"),
                  RecipientItem(name: "Shahara Banu", initials: "SB", flagUrl: "https://upload.wikimedia.org/wikipedia/commons/f/f9/Flag_of_Bangladesh.svg"),
                  RecipientItem(name: "Rokeya Chowdhury", initials: "RC", flagUrl: ""),
                  // Add more recipients as necessary
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RecipientItem extends StatelessWidget {
  final String name;
  final String initials;
  final String flagUrl;

  RecipientItem({required this.name, required this.initials, required this.flagUrl});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 24,
            backgroundColor: ColorHelper.themeGreyColor,
            child: Text(
              initials,
              style: TextStyle(color: ColorHelper.mainFontColor, fontWeight: FontWeight.bold),
            ),
            // Add flag to the bottom-right corner of the avatar if available
            foregroundImage: flagUrl.isNotEmpty ? NetworkImage(flagUrl) : null,
          ),
          SizedBox(height: 4),
          SizedBox(
            width: 60,
            child: Text(
              name,
              maxLines: 2,
              textAlign: TextAlign.center,
              style: TextStyle(color: ColorHelper.mainFontColor),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
