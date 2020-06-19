import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/rendering.dart';
import 'package:soccerapp/components/PositionTable.dart';
import 'package:soccerapp/components/horizontal_listview.dart';
import 'package:soccerapp/components/next_games.dart';
import 'My_Account.dart';
import 'My_Teams.dart';
import 'Settings.dart';
import 'Statistics.dart';
import 'About.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:provider/provider.dart';
import 'package:soccerapp/Provider/user_provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  /* // variables para mover el equipo principal al seleccionar uno del floating button
  String team_selected = "team1_logo.png";
   String team_wait;
    String team_child1 = "team2_logo.png";
    String team_child2 = "team3_logo.png";
   String team_child3 = "team4_logo.png";*/
  
 

  @override
  Widget build(BuildContext context) {
 final user = Provider.of<UserProvider>(context);

 
    Widget imageCarousel = new Container(
      height: 180.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage("Imagenes/soccer 1.jpg"),
          AssetImage("Imagenes/soccer 3.jpg"),
          AssetImage("Imagenes/soccer_2.jpg"),
        ],
        autoplay: false,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        indicatorBgPadding: 4.0,
        dotBgColor: Colors.transparent,
      ),
    );

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
              accountName: Text(UserProvider.initialize().user.email),
              accountEmail: Text(UserProvider.initialize().user.email),
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

             InkWell(
              onTap: () {
               user.signOut();
              },
              child: ListTile(
                title: Text("Sign Out"),
                leading: Icon(Icons.transit_enterexit, color: Colors.red),
              ),
            ),
          ],
        ),
      ),

      //Aqui es el floatting button del torneo del cual se muestran los datos

      floatingActionButton: SpeedDial(
        // both default to 16
        marginRight: 18,
        marginBottom: 20,
        child: Image.asset("Imagenes/Teams/team1_logo.png"),
        //animatedIcon: AnimatedIcons.menu_close,
        //animatedIconTheme: IconThemeData(size: 22.0),
        // this is ignored if animatedIcon is non null
        //child: Icon(Icons.add),
        //visible: _dialVisible,
        // If true user is forced to close dial manually
        // by tapping main button and overlay is not rendered.
        closeManually: false,
        curve: Curves.bounceIn,
        overlayColor: Colors.black,
        overlayOpacity: 0.5,
        onOpen: () => print('OPENING DIAL'),
        onClose: () => print('DIAL CLOSED'),
        tooltip: 'Speed Dial',
        heroTag: 'speed-dial-hero-tag',
        backgroundColor: Colors.green,
        foregroundColor: Colors.black,
        elevation: 8.0,
        shape: CircleBorder(),
        children: [
          SpeedDialChild(
              child: FittedBox(
                  child: Image.asset(
                "Imagenes/Teams/team2_logo.png",
                width: 2,
                height: 2,
                alignment: Alignment.center,
              )),
              backgroundColor: Colors.red,
              label: 'Vikingos',
              labelStyle: TextStyle(fontSize: 18.0),
              onTap: () {
                /* // variables para mover el equipo principal al seleccionar uno del floating button
                team_wait = team_selected;
                team_selected = team_child1;
                team_child1 = team_wait;
                print(team_selected);
                print(team_child1);*/
              }),
          SpeedDialChild(
            child: FittedBox(
                child: Image.asset(
              "Imagenes/Teams/team3_logo.png",
              width: 10,
              height: 10,
              alignment: Alignment.center,
            )),
            backgroundColor: Colors.blue,
            label: 'Aguilas',
            labelStyle: TextStyle(fontSize: 18.0),
            onTap: () => print('SECOND CHILD'),
          ),
          SpeedDialChild(
            child: Image.asset("Imagenes/Teams/team4_logo.png"),
            backgroundColor: Colors.yellow[700],
            label: 'Inter',
            labelStyle: TextStyle(fontSize: 18.0),
            onTap: () => print('THIRD CHILD'),
          ),
        ],
      ),

      body: new ListView(
        children: <Widget>[
          //IMAGENS CARRUSEL EMPIEZA AQUI
          imageCarousel,

          //PADDIGN WIDGET
          new Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Text(
              "Resultados",
              style: TextStyle(color: Colors.white),
            ),
          ),

          //HORIZONTAL LIST VIEW EMPIEZA AQI
          Container(
            height: 120.0,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 6,
                itemBuilder: (_, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: HorizontalList(
                      logo1: "team1_logo.png",
                      logo2: "team3_logo.png",
                      team1: "Garsal",
                      team2: "Aguilas",
                      result1: "3",
                      result2: "5",
                    ),
                  );
                }),
          ),

          //PADDIGN WIDGET
          new Padding(
            padding: const EdgeInsets.all(15.0),
            child: new Text(
              "Proximos Juegos",
              style: TextStyle(color: Colors.white),
            ),
          ),

          //AQUI SE AGREGAN LOS PROXIMOS JUEGOS
          new Padding(
              padding: const EdgeInsets.only(left: 6, right: 6, bottom: 6),
              child: NextGames()),

          //PADDIGN WIDGET
          new Padding(
            padding: const EdgeInsets.all(3.0),
            child: new Text(
              "Tabla de posiciones",
              style: TextStyle(color: Colors.white),
            ),
          ),

          //TABLA DE POSICIONES

          Container(child: PositionTable2()),
        ],
      ),
    );
  }
}
