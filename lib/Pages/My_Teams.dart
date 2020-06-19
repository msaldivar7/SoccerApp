import 'package:flutter/material.dart';
import 'Home.dart';
import 'My_Account.dart';
import 'Settings.dart';
import 'Statistics.dart';
import 'About.dart';
import 'Create_Team.dart';
import 'package:soccerapp/components/Stack_Teams.dart';

class MyTeams extends StatefulWidget {
  @override
  _MyTeamsState createState() => new _MyTeamsState();
}

class _MyTeamsState extends State<MyTeams> {
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
              icon: Icon(Icons.person_add, color: Colors.white), onPressed: () {}),
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
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => About()));
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CreateTeams()));
          
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.green,
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 6.0,
        shape: CircularNotchedRectangle(),
        color: Colors.red[600],
        child: Container(height: 50.0),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      body: new Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(children: <Widget>[
// inicia el Stack para la lista de torneos en los que esta inscrito//
         
         new StackTeams(logoClub: "champions.jpg", team: "UNITED", nextDate: "16/04/20", players: "11", position: "5"),
        new StackTeams(logoClub: "kalcho.jpg", team: "Vikingos", nextDate: "5/04/20", players: "8", position: "12"),
        new StackTeams(logoClub: "La Luz.jpg", team: "GPI", nextDate: "5/04/20", players: "9", position: "2"),
        new StackTeams(logoClub: "liga7.png", team: "TEAM", nextDate: "12/04/20", players: "11", position: "4"),
        new StackTeams(logoClub: "LigaInter.png", team: "TEAM2", nextDate: "18/04/20", players: "7", position: "8"),


        ]),
      ),
    );
  }
}
