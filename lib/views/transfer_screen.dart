import 'package:flutter/material.dart';

class TransactionsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transactions'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text('Requests', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage('https://example.com/user1.jpg'),
              ),
              title: Text('Kendrik Tamar'),
              subtitle: Text('Present for George'),
              trailing: Text('15,00 USD', style: TextStyle(color: Colors.black)),
            ),
            // Add more ListTiles for requests
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Icon(Icons.send, size: 50),
                    Text('Send Money'),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.request_page, size: 50),
                    Text('Request Money'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
