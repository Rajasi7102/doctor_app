import 'package:flutter/material.dart';



class Screen6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('SAPDOS'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              _showAlertDialog(context);
            },
            child: Text('Confirm Booking'),
          ),
        ),
      ),
    );
  }

  void _showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Booking Confirmation'),
          content: Text('Your booking is confirmed'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Okay'),
            ),
          ],
        );
      },
    );
  }
}