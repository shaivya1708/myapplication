import 'package:flutter/material.dart';

class Screen7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink.shade400,
        title:Text('Extras',
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
              color: Colors.red,
              child:Text(
              'welcome to bullet screen'
                ),
                onPressed:() {
                  Navigator.pop(context);
                }
        ),
      ),
    );
  }
}