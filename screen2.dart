import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget{
  @override
  Widget build(BuildContext context ) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title:Text('Screen 2'),
      ),
      body:Center(
        child:RaisedButton(
          color: Colors.red,
          child:Text(
            'elecoe to screen 2'
          ),
          onPressed:(){
            print('Screen 2 button is pressed');
          }
        ),
      ),
    );
  }
}
