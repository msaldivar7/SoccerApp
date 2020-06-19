import 'package:flutter/material.dart';
import 'package:soccerapp/Pages/Home.dart';
import 'package:soccerapp/Pages/Login.dart';
import 'package:soccerapp/Pages/splash.dart';
import 'package:provider/provider.dart';
import 'package:soccerapp/Provider/user_provider.dart';

void main() {
  runApp(
    //pues el UserProvider no es un wIDGET pero a que se refiere, esta parte la hice siguiendo un tutorial y si le funciona
    //estuve viendo algunos foros y decial algo de cambiar el builder: por un create:, lo hice y me quita ese error, pero me sale otro error al iniciar la app que te aparece la pantalla roja

/*  ChangeNotifierProvider(builder: (_) => UserProvider.initialize(),
  child: MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
        primaryColor: Colors.deepOrange

  ),
  home: ScreensController() ,
  ));*/
    ChangeNotifierProvider(
      create: (_) => UserProvider.initialize(),
      
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: Colors.deepOrange),
        
        home: ScreensController() ,
      ),
    ),
  );
}

class ScreensController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context);
    switch (user.status) {
      case Status.Uninitialized:
        return Splash();
      case Status.Unauthenticated:
      case Status.Authenticating:
        return Login();
      case Status.Authenticated:
        return HomePage();
      default:
        return Login();
    }
  }
}
