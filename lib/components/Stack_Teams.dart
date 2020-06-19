import 'package:flutter/material.dart';

class StackTeams extends StatelessWidget {
  final String logoClub;
  final String team;
  final String nextDate;
  final String players;
  final String position;

  StackTeams({
    @required this.logoClub,
    @required this.team,
    @required this.nextDate,
    @required this.players,
    @required this.position,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
            height: 250,
            width: 190,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                    color: Color(0xFF02121F),
                    offset: const Offset(1, 1),
                    spreadRadius: 3,
                    blurRadius: 2)
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(36),
              child: Image.asset(
                "Imagenes/Teams/$logoClub",
                fit: BoxFit.contain,
              ),
            )),
      ),

      // HAY QUE CORREGIR ESTO PARA QUE EL CONTAINER NO SEA SCROLL  
      Positioned(
        bottom: 30,
        right: 19,
        child: Container(
          height: 210,
          width: 220,
          decoration: BoxDecoration(
            color: Color(0xFF013C05),
            borderRadius: BorderRadius.all(Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                  color: Color(0xFF02121F),
                  offset: const Offset(1, 1),
                  spreadRadius: 3,
                  blurRadius: 2)
            ],
          ),
          child: ListView(
            children: <Widget>[
              new Padding(
                padding: const EdgeInsets.all(8.0),
                child: new Text(
                  "$team",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15, right: 15, top: 15, bottom: 1),
                child: new Text(
                  "Siguiente Juego:",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Text(
                "$nextDate",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                ),
                textAlign: TextAlign.center,
              ),
              new Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15, right: 29, top: 27, bottom: 15),
                    child: Text(
                      "Jugadores: $players",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 10, right: 8, top: 27, bottom: 15),
                    child: Text(
                      "Lugar: $position º",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
                child: Container(
                  height: 50,
                  child: Material(
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    color: Color(0xFF012B04),
                    child: InkWell(
                      child: ListTile(
                        title: Text(
                          'Editar',
                          style: TextStyle(color: Colors.blue[300]),
                        ),
                        trailing: Icon(
                          Icons.edit,
                          color: Colors.blue[300],
                        ),
                        onTap: () {},
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      )
    ]);
  }
}
