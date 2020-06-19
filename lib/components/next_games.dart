import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';


class NextGames extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 3.6,
      width: 150,
      decoration: BoxDecoration(
          color: Color(0xFF04213A),
          ),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 35,right: 4 ,top:10,bottom: 10),
                  child: Container(
                     height: 110,
                      width: 140,
                      decoration: BoxDecoration(
                          color: Color(0xFF04213A),
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                                color: Color(0xFF375D7C),
                                offset: const Offset(3, 0),
                                spreadRadius: -1
                                ),
                          ]),
                          child: Image.asset("Imagenes/Teams/team1_logo.png",width: 3, height: 3, alignment: Alignment.center,)
                          ),
                
              ),

              Padding(
             padding: const EdgeInsets.only(left:4 ,right:4 ,top:1 ,bottom: 1),
             child: Text(
                "V.S.",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
           ),

               Padding(
                padding: const EdgeInsets.only(top:10, right:5 ,bottom: 10),
                child: 
                
                Container (
                    height: 110,
                    width: 150,                   
                   decoration: BoxDecoration(
                        color: Color(0xFF04213A),
                        shape: BoxShape.circle,
                         boxShadow: [
                          BoxShadow(
                              color: Color(0xFF375D7C),
                             offset: const Offset(-3,0),
                             spreadRadius: -1
                              )
                        ]),
                        child: FittedBox(child: Image.asset("Imagenes/Teams/team3_logo.png",width: 20, height: 20,alignment: Alignment.center,))
                        ),
              ),
              
            ],

           
          ),

           Padding(
             padding: const EdgeInsets.only(left:15 ,right:1 ,top:1 ,bottom: 1),
             child: Text(
                "Jornada 8",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
           ),

           Padding(
             padding: const EdgeInsets.only(left:15 ,right:1 ,top:1 ,bottom: 1),
             child: Text(
                "Sabado 27/Marzo/2020",
                style: TextStyle(color: Colors.white,fontSize: 17),
              ),
           ),

            Padding(
             padding: const EdgeInsets.only(left:15 ,right:1 ,top:1 ,bottom: 1),
             child: Text(
                "12:00PM",
                style: TextStyle(color: Colors.white, fontSize: 17),
              ),
           ),
        ],
      ),
    );
  }
}
