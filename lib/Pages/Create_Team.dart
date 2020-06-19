import 'package:flutter/material.dart';
import 'Home.dart';
import 'My_Account.dart';
import 'Statistics.dart';
import 'My_Teams.dart';
import 'About.dart';

class CreateTeams extends StatefulWidget {
  @override
  _SettingsState createState() => new _SettingsState();
}

class _SettingsState extends State<CreateTeams> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Color(0xFF04213A),
      appBar: new AppBar(
        elevation: 1.0,
        backgroundColor: Color(0xFF24313D),
        title: Center(
            child: Text(
          "Crear Equipo",
        )),
      ),
      body: new ListView(children: <Widget>[
        new Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: new Text(
              "Agraga un escudo a tu equipo",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),

        // 013C05

        Container(
          height: 150,
          width: 150,
          decoration: BoxDecoration(
            color: Color(0xFFD8D8D8),
            shape: BoxShape.circle,
          ),
          child: FittedBox(
              child: Image.asset(
            "Imagenes/Teams/futbol.png",
            width: 20,
            height: 20,
            alignment: Alignment.center,
          )),
        ),

        Padding(
          padding: const EdgeInsets.only(left: 35, top: 2, right: 35),
          child: TextField(
            style:
                TextStyle(color: Colors.black, decoration: TextDecoration.none),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(4),
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(),
              focusedBorder: OutlineInputBorder(
                borderRadius: new BorderRadius.circular(10),
              ),
              enabledBorder: UnderlineInputBorder(
                borderRadius: new BorderRadius.circular(10),
              ),
              hintStyle: TextStyle(color: Colors.black38, fontSize: 13),
              hintText: 'Nombre de tu equipo',
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(left:10.0, right: 10,top: 30,bottom: 1),
          child: Center(
            child: new Text(
              "Agragar Jugadores",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),


        Stack(
          children: <Widget>[
            
               Center(
                child: SizedBox(
                  height: 280,
                  width: 380,
                  child: FittedBox(
                                  child: Image.asset(
                      "Imagenes/cancha.png",
                      alignment: Alignment.center,),
                  )

                ),
              ),
            
            Positioned(
              bottom: 1,
              right: 85,
              child: SizedBox(
                width: 70,
                height: 70,
                              child: FloatingActionButton(
                  heroTag: "editPhoto",
                  onPressed: () {},
                  child: Icon(Icons.share, color: Colors.grey, size: 40),
                  backgroundColor: Color(0xFFD24343),
                  mini: false,
                ),
              ),
            ),
          ],
        ),

        SizedBox(height: 10),

        Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 35, top: 50, right: 35),
            child: SizedBox(
              width: 200,
              height: 50,
              child: RaisedButton(
                  child:
                      const Text('Siguiente', style: TextStyle(fontSize: 20)),
                  elevation: 5.0,
                  color: Colors.blue[300],
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(13.0),
                  ),
                  onPressed: () {}),
            ),
          ),
        ),
      ]),
    );
  }
}
