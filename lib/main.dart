import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[600],
          title: Text('My Coupons'),
          leading: Icon(Icons.arrow_back),
        ),
        body: Container(
          margin: EdgeInsets.all(10.0),
          child: ListView.builder(itemBuilder: (_, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: Card(
                color: Colors.grey[400],
                child: ListTile(
                  contentPadding:
                      const EdgeInsets.fromLTRB(6.0, 10.0, 4.0, 0.0),
                  leading: Icon(
                    Icons.local_offer,
                    size: 25.0,
                  ),
                  title: Text(
                      'This is Your Coupon Card for a huge discount $index'),
                  subtitle: Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
                    child: Text(
                      '*Terms and Conditions Apply',
                      style: TextStyle(fontSize: 10.0),
                      textAlign: TextAlign.end,
                    ),
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
