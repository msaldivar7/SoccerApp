import 'package:flutter/material.dart';
import 'Home.dart';
import 'My_Account.dart';
import 'Statistics.dart';
import 'My_Teams.dart';
import 'Settings.dart';


class About extends StatefulWidget {
  @override
  _AboutState createState() => new _AboutState();
}

class _AboutState extends State<About> {
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
              Navigator.push(context, MaterialPageRoute(builder: (context) =>HomePage()));
              },
              child: ListTile(
                title: Text("Home Page"),
                leading: Icon(Icons.home),
              ),
            ),

            InkWell(
              onTap: () {
                Navigator.pop(context);
                 Navigator.push(context, MaterialPageRoute(builder: (context) =>MyAccount()));
              },
              child: ListTile(
                title: Text("My account"),
                leading: Icon(Icons.person),
              ),
            ),

            InkWell(
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) =>MyTeams()));
              },
              child: ListTile(
                title: Text("My Teams"),
                leading: Icon(Icons.group_work),
              ),
            ),

            InkWell(
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) =>Statistics()));
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
                Navigator.push(context, MaterialPageRoute(builder: (context) =>Settings()));
              },
              child: ListTile(
                title: Text("Settings"),
                leading: Icon(Icons.settings, color: Colors.red),
              ),
            ),

            InkWell(
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) =>About()));
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
      body:
            new Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Text(
              "escribir texto aqui.... About",
              style: TextStyle(color: Colors.white),
            ),
          ),
      );
      }
      }