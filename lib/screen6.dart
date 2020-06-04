import 'package:flutter/material.dart';

class Screen6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink.shade400,
        title:Text('My Profile',
          style: TextStyle(
            fontFamily: 'Volkhov',
            fontSize: 25.0,
            color: Colors.white,
            fontWeight:FontWeight.bold,
          ),
        ),
      ),
      body:Center(
        child:RaisedButton(
            color: Colors.grey,
            child:Text(
                'back'
            ),
            onPressed:() {
              Navigator.pop(context);
            }
        ),
      ),
    );
  }
}