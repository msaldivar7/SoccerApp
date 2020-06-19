import 'package:flutter/material.dart';
import 'Home.dart';
import 'My_Teams.dart';
import 'Settings.dart';
import 'Statistics.dart';
import 'About.dart';

class MyAccount extends StatefulWidget {
  @override
  _MyAccountState createState() => new _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Color(0xFF04213A),
        appBar: new AppBar(
          elevation: 0.0,
          backgroundColor: Color(0xFF04213A),
          title: Text("SoccerApp"),
          actions: <Widget>[
            new IconButton(
                icon: Icon(Icons.person_add, color: Colors.white),
                onPressed: () {}),
          ],
        ),
        drawer: new Drawer(
          child: new ListView(
            children: <Widget>[
              //HEADER
              new UserAccountsDrawerHeader(
                accountName: Text('Miguel Saldivar'),
                accountEmail: Text('miguel.smtz@hotmail.com'),
                currentAccountPicture: GestureDetector(
                  child: new CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Icon(Icons.person, color: Colors.white),
                  ),
                ),
                decoration: new BoxDecoration(
                  color: Color(0xFF2971DE),
                ),
              ),

              //// BODY

              InkWell(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: ListTile(
                  title: Text("Home Page"),
                  leading: Icon(Icons.home),
                ),
              ),

              InkWell(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyAccount()));
                },
                child: ListTile(
                  title: Text("My account"),
                  leading: Icon(Icons.person),
                ),
              ),

              InkWell(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyTeams()));
                },
                child: ListTile(
                  title: Text("My Teams"),
                  leading: Icon(Icons.group_work),
                ),
              ),

              InkWell(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Statistics()));
                },
                child: ListTile(
                  title: Text("Estadisticas"),
                  leading: Icon(Icons.pie_chart),
                ),
              ),

              Divider(),

              InkWell(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Settings()));
                },
                child: ListTile(
                  title: Text("Settings"),
                  leading: Icon(Icons.settings, color: Colors.red),
                ),
              ),

              InkWell(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => About()));
                },
                child: ListTile(
                  title: Text("About"),
                  leading: Icon(
                    Icons.help,
                    color: Colors.blue,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: new ListView(children: <Widget>[
          new Padding(
            padding: const EdgeInsets.all(1.0),
            child: new Container(
                height: 250,
                width: 5,
                decoration: BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(70),
                      bottomRight: Radius.circular(70),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xFF020D17),
                          offset: const Offset(0, 5),
                          spreadRadius: 6,
                          blurRadius: 5)
                    ]),
                child: Padding(
                  padding: const EdgeInsets.only(top: 4.0),
                  child: ListView(children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 2.0, left: 130),
                      child: new Stack(
                        children: <Widget>[
                          Container(
                              height: 150,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Color(0xFFD8D8D8),
                                shape: BoxShape.circle,
                              ),
                              child: Icon(Icons.person,
                                  color: Colors.grey, size: 70)),
                          Positioned(
                            bottom: 4,
                            right: 130,
                            child: FloatingActionButton(
                              heroTag: "editPhoto",
                              onPressed: () {},
                              child: Icon(Icons.photo_camera,
                                  color: Colors.grey, size: 20),
                              backgroundColor: Color(0xFFD24343),
                              mini: true,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        new Padding(
                          padding: const EdgeInsets.only(top: 7.0, left: 130),
                          child: new Text(
                            "Miguel Saldivar",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        new Padding(
                            padding: const EdgeInsets.only(top: 7.0, left: 70),
                            child: Material(
                              color: Colors.white,
                              child: IconButton(
                                  icon: Icon(Icons.edit, color: Colors.grey,size: 18,),
                                  onPressed: () {
                                    createAlertDialog(context);
                                  }),
                            ))
                      ],
                    ),
                    new Padding(
                      padding: const EdgeInsets.only(top: 3.0, left: 130),
                      child: new Text(
                        "miguel.smtz@hotmail.com",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ]),
                )),
          ),
        // Opciones de la cuenta
          /*new Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Color(0xFFADAFB0),
          )),*/

        Padding(
          padding: const EdgeInsets.only(top: 29 ,bottom:8 ,left: 23 ,right: 23 ),
          child: Card(
            color: Color (0xFF07243F) ,
                    child: ListTile(
                title: Text('Pagos', style: TextStyle(color: Colors.white) ,),
                subtitle: Text("revision de tarjetas", style: TextStyle(color: Colors.grey)),
                leading: Icon(Icons.credit_card, color: Colors.white, size: 30,),
                trailing: Icon(Icons.play_arrow, color: Colors.white , ),
                onTap: (){},
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8 ,bottom:8 ,left: 23 ,right: 23 ),
          child: Card(
            color: Color (0xFF07243F) ,
                    child: ListTile(
                title: Text('Contactos', style: TextStyle(color: Colors.white) ,),
                subtitle: Text("agregar o eliminar contactos", style: TextStyle(color: Colors.grey)),
                leading: Icon(Icons.contacts, color: Colors.white, size: 30,),
                trailing: Icon(Icons.play_arrow, color: Colors.white , ),
                onTap: (){},
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8 ,bottom:8 ,left: 23 ,right: 23 ),
          child: Card(
            color: Color (0xFF07243F) ,
                    child: ListTile(
                title: Text('Titulo 1', style: TextStyle(color: Colors.white) ,),
                subtitle: Text("Subtitulo 1", style: TextStyle(color: Colors.grey)),
                leading: Icon(Icons.donut_large, color: Colors.white, size: 30,),
                trailing: Icon(Icons.play_arrow, color: Colors.white , ),
                onTap: (){},
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8 ,bottom:8 ,left: 23 ,right: 23 ),
          child: Card(
            color: Color (0xFF07243F) ,
                    child: ListTile(
                title: Text('Titulo 2', style: TextStyle(color: Colors.white) ,),
                subtitle: Text("Subtitulo 2", style: TextStyle(color: Colors.grey)),
                leading: Icon(Icons.donut_large, color: Colors.white, size: 30,),
                trailing: Icon(Icons.play_arrow, color: Colors.white , ),
                onTap: (){},
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8 ,bottom:8 ,left: 23 ,right: 23 ),
          child: Card(
            color: Color (0xFF07243F) ,
                    child: ListTile(
                title: Text('Titulo 3', style: TextStyle(color: Colors.white) ,),
                subtitle: Text("Subtitulo 3", style: TextStyle(color: Colors.grey)),
                leading: Icon(Icons.donut_large, color: Colors.white, size: 30,),
                trailing: Icon(Icons.play_arrow, color: Colors.white , ),
                onTap: (){},
            ),
          ),
        ),
        ]
        )
        );
  }

  TextEditingController controller1 = TextEditingController();

  Future<String> createAlertDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(15)),
            title: Text("Nuevo Nombre"),
            content: TextField(
              controller: controller1,
            ),
            actions: <Widget>[
              MaterialButton(
                elevation: 5.0,
                onPressed: () {
                  Navigator.of(context).pop(controller1.text.toString());
                },
                child: Text("submit"),
              )
            ],
          );
        });
  }
}
