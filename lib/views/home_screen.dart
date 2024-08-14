import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Column(
        children: [
          SizedBox(height: 60), // For Status Bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap:(){

          },
                  child: Text(
                    '384,43 USD',
                    style: TextStyle(
                      fontSize: 28,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Icon(Icons.notifications, color: Colors.white),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage('https://example.com/user1.jpg'),
                ),
                SizedBox(width: 10),
                CircleAvatar(
                  backgroundImage: NetworkImage('https://example.com/user2.jpg'),
                ),
                SizedBox(width: 10),
                CircleAvatar(
                  backgroundImage: NetworkImage('https://example.com/user3.jpg'),
                ),
                Spacer(),
                Text(
                  'View All',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: ListView(
                padding: EdgeInsets.all(20),
                children: [
                  Text('History', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage('https://example.com/user1.jpg'),
                    ),
                    title: Text('Menghe Li'),
                    subtitle: Text('For McDonald\'s'),
                    trailing: Text('+7,90 USD', style: TextStyle(color: Colors.green)),
                  ),
                  // Add more ListTiles for transactions
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
