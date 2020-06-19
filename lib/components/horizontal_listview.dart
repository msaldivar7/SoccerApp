import 'package:flutter/material.dart';
 

class HorizontalList extends StatelessWidget {
  final String logo1;
  final String logo2;
  final String team1;
  final String team2;
  final String result1;
  final String result2;

  HorizontalList({@required this.logo1,@required this.logo2, @required this.team1, @required this.team2, @required this.result1, @required this.result2 });

  @override
  Widget build(BuildContext context) {
    return Container(
                height: 120,
                width: 150,
                decoration: BoxDecoration(
                    color: Color(0xFF04213A),
                    borderRadius: BorderRadius.only(topLeft:Radius.circular(5) ,topRight: Radius.circular(40) , bottomLeft: Radius.circular(40) ,bottomRight: Radius.circular(5),),
                    boxShadow: [
                    BoxShadow( 
                        color: Color(0xFF5F0923),
                        offset: const Offset(4, 4),
                        spreadRadius: -2,
                        blurRadius:9
                        ),
                    
                    BoxShadow(
                      
                      color: Color(0xFF2A557A),
                        offset: const Offset(-4, -4),
                        spreadRadius: -2,
                        blurRadius: 9
                        ),
                  ]
                    
                    ),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Image.asset("Imagenes/Teams/$logo1",width: 30, height: 30,),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Text(team1,
                              style: TextStyle(color: Colors.white)),
                        ),
                    
                      Padding(
                          padding: const EdgeInsets.only(right: 13),
                          child: Text(result1,
                              style: TextStyle(color: Colors.white)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                         Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Image.asset("Imagenes/Teams/$logo2",width: 30, height: 30,),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(team2,
                              style: TextStyle(color: Colors.white)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 13),
                          child: Text(result2,
                              style: TextStyle(color: Colors.white)),
                        ),
                      ],
                    ),
                  ],
                ),
              );
  }
}


