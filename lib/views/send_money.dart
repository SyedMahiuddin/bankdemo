import 'package:flutter/material.dart';
String imgLink="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTlgVUiuTQbmj_jO_W1nmX8bzbXS2DDxMStn8FdSPyK7SSAKVnHXZjTx9764JdwzGSWd84&usqp=CAU";

class SendMoneyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Send Money'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
              '12,50 EUR',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(imgLink),
              ),
              title: Text('Friends and Family'),
              subtitle: Text('These are personal payments between you and the people you know.'),
              trailing: Icon(Icons.check),
            ),
            // Add more ListTiles for payment options
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: Text('Create a Money Pool'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 50),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
