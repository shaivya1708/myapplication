import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'screen7.dart';
import 'screen6.dart';


class Screen3 extends StatelessWidget{
  final List<String> foodnames = <String>['pasta', 'idli', 'coldrink','tea','springroll','chowmein','friedrice'];
  final List<int> colorCodes = <int>[800, 700, 600,500,400,100,50];
  final List<int> foodcost=<int>[40,30,45,10,30,35,40];
  final List foodimage=['images/pasta.jpg','images/idli.jpg','images/cold drink.jpg','images/tea.jpg','images/springroll.jpg','images/chowmein.jpg','images/fried-rice.jpg'];
  @override
  Widget build(BuildContext context ) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink.shade400,
        title:Text('craveIITJ',
          style: TextStyle(
            fontFamily: 'Volkhov',
            fontSize: 25.0,
            color: Colors.white,
            fontWeight:FontWeight.bold,
          ),
        ),
        actions:<Widget>[
          IconButton(
            icon:Icon(Icons.local_library),
            onPressed:(){
              print('order menu prssed');
            },
          ),
          IconButton(
            icon:Icon(Icons.account_circle),
            onPressed:(){
              Navigator.pushNamed(context, '/sixth');
            },
          ),
          IconButton(
            icon:Icon(Icons.format_list_bulleted),
            onPressed:(){
              Navigator.pushNamed(context, '/seventh');
            },
          ),
        ],
      ),
      body:ListView.separated(
          padding: const EdgeInsets.all(5),
          itemCount: foodnames.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 150,
              color: Colors.blueGrey.shade50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:[
                  CircleAvatar(
                    radius: 70.0,
                    backgroundImage: AssetImage('${foodimage[index]}'),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:[

                      Row(

                        children:<Widget>[
                          Expanded(
                            child: IconButton(icon:Icon(Icons.restaurant),
                            onPressed: (){
                            },),
                          ),
                          Expanded(
                            child: Text(
                              '${foodnames[index]}',  
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w800,
                                fontFamily: 'Volkhov',
                                letterSpacing: 0.5,
                                fontSize: 10,
                              ),
                            ),
                          ),
                        ],
                      ),
                     Row(
                       children:<Widget>[
                         Expanded(
                           child: IconButton(icon:Icon(Icons.attach_money),
                           onPressed:(){},),
                         ),
                         Expanded(
                           child: Text(
                             '${foodcost[index]}',
                             style: TextStyle(
                               color: Colors.blueAccent,
                               fontWeight: FontWeight.w800,
                               fontFamily: 'Volkhov',
                               letterSpacing: 0.5,
                               fontSize: 10,
                             ),
                           ),
                         ),
                       ],
                     ),
                      Row(
                        children:<Widget>[
                          Expanded(
                            child: IconButton(icon:Icon(Icons.star),
                            onPressed:(){

                            },),
                          ),
                          Expanded(
                            child: Text(
                              'Review',
                              style: TextStyle(
                                color: Colors.blueAccent,
                                fontWeight: FontWeight.w800,
                                fontFamily: 'Volkhov',
                                letterSpacing: 0.5,
                                fontSize: 10,
                              ),
                            ),
                          ),
                        ],
                      ),
                     Row(children:<Widget>[
                       Expanded(
                         child: IconButton(icon:Icon(Icons.bookmark),
                         onPressed:(){

                         },),
                       ),
                       Expanded(
                         child: Text('place order',
                           style: TextStyle(
                             color: Colors.pink,
                             fontWeight: FontWeight.w800,
                             fontFamily: 'Volkhov',
                             letterSpacing: 0.5,
                             fontSize: 10,
                           ),

                         ),
                       ),
                     ],),


                    ],

                  ),
                ],
              ),
            );
          },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );
  }
}
