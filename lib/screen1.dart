import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget{
  @override
  Widget build(BuildContext context ) {

    return Scaffold(

        backgroundColor: Colors.pink.shade100,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/shaivya.jpg'),
              ),
              Text(
                'craveIITJ',
                style: TextStyle(
                  fontFamily: 'Volkhov',
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight:FontWeight.bold,
                ),
              ),
              Text('Foodies App',
                  style: TextStyle(
                    fontFamily: 'Volkhov',
                    fontSize: 20.0,
                    letterSpacing: 2.5,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(
                  height: 20.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.pink.shade50,
                  )),
              Card(
                  color: Colors.white,
                  margin:
                  EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: FlatButton(
                    child: ListTile(
                      leading: Icon(
                        Icons.restaurant_menu,
                        size: 40.0,
                        color: Colors.pink,
                      ),
                      title: Text(
                        'order now',
                        style: TextStyle(
                          fontFamily: 'Volkhov',
                          fontSize: 20.0,
                          letterSpacing: 2.0,
                          color: Colors.pink,
                        ),
                      ),
                    ),
                    onPressed: (){
                     Navigator.pushNamed(context, '/third');
                    },
                  )),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: FlatButton(
                  child: ListTile(
                    leading: Icon(
                      Icons.local_phone,
                      size: 40.0,
                      color: Colors.pink,
                    ),
                    title: Text(
                      '7051392796',
                      style: TextStyle(
                        fontFamily: 'Volkhov',
                        fontSize: 20.0,
                        letterSpacing: 2.0,
                        color: Colors.pink,
                      ),
                    ),
                  ),
                  onPressed: (){
                    Navigator.pushNamed(context,'/fourth');
                  },
                ),
              ),
            ],
          ),
        ),
    );
  }
}
