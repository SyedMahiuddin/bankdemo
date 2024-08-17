import 'package:flutter/material.dart';
import '../customs/color_helper.dart';

class NewRequestScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorHelper.themeBackColor,
      appBar: AppBar(
        backgroundColor: ColorHelper.themeBackColor,
        elevation: 0,
        leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
            child: Icon(Icons.close, color: Colors.white)),
        title: Text('New request', style: TextStyle(color: Colors.white)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              decoration: BoxDecoration(
                  color: ColorHelper.themeGreyColor.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(30.0),

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
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: ColorHelper.themeGreyColor.withOpacity(0.5),
                borderRadius: BorderRadius.circular(10),
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
                          'Turn on contacts and request from friends',
                          style: TextStyle(color: Colors.white),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            'Find friends',
                            style: TextStyle(
                                color: ColorHelper.secondaryFontColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Icon(Icons.close, color: Colors.white),
                ],
              ),
            ),
            SizedBox(height: 16),
            ListTile(
              leading: Icon(Icons.people, color: Colors.white),
              title: Text('Anyone', style: TextStyle(color: Colors.white)),
              subtitle: Text('Share a link to get paid back',
                  style: TextStyle(color: Colors.grey)),
              onTap: () {},
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: ColorHelper.secondaryFontColor,
                      child: Text('FM', style: TextStyle(color: Colors.white)),
                    ),
                    title: Text('Frank Kyalo Muasya',
                        style: TextStyle(color: Colors.white)),
                    subtitle: Text('Wise account',
                        style: TextStyle(color: Colors.grey)),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: ColorHelper.secondaryFontColor,
                      child: Text('MA', style: TextStyle(color: Colors.white)),
                    ),
                    title: Text('Mohsin Anwar',
                        style: TextStyle(color: Colors.white)),
                    subtitle: Text('Wise account',
                        style: TextStyle(color: Colors.grey)),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: ColorHelper.secondaryFontColor,
                      child: Text('SS', style: TextStyle(color: Colors.white)),
                    ),
                    title: Text('Sevinc Shirinova',
                        style: TextStyle(color: Colors.white)),
                    subtitle: Text('Wise account',
                        style: TextStyle(color: Colors.grey)),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
