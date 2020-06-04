import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'screen1.dart';
import 'screen3.dart';
import 'screen4.dart';
import 'screen6.dart';
import 'screen7.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget
{
  @override
  Widget build(BuildContext context ) {
    return MaterialApp(
      initialRoute: '/',
      routes:{
        '/':(context)=>Screen1(),
        '/third':(context)=>Screen3(),
        '/fourth':(context)=>Screen4(),
        '/sixth':(context)=>Screen6(),
        '/seventh':(content)=>Screen7(),
      }

    );

  }
}