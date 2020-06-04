import 'package:flutter/material.dart';

class Screen4 extends StatelessWidget{
  @override
  Widget build(BuildContext context ) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title:Text('Screen 4'),
      ),
      body:Center(
        child:RaisedButton(
            color: Colors.red,
            child:Text(
                'welcome to screen 4, call for ordering'
            ),
            onPressed:(){
              Navigator.pop(context);
            }
        ),
      ),
    );
  }
}
