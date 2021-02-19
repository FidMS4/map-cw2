import 'package:CreativeWork2/screen/actionadventure_screen.dart';
import 'package:CreativeWork2/screen/comedy_screen.dart';
import 'package:CreativeWork2/screen/crime_screen.dart';
import 'package:CreativeWork2/screen/drama_screen.dart';
//import 'package:CreativeWork2/screen/favorites_screen.dart';
import 'package:CreativeWork2/screen/home_screen.dart';
import 'package:CreativeWork2/screen/horrorthriller_screen.dart';
import 'package:CreativeWork2/screen/musical_screen.dart';
import 'package:CreativeWork2/screen/scifantasy_screen.dart';
import 'package:CreativeWork2/screen/signin_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(CreativeWork2App());
}

class CreativeWork2App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.red[900],
      statusBarColor: Colors.black,
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        textTheme: TextTheme(
          headline6: TextStyle(
            fontFamily: 'Federo',
            fontSize: 33.0,
            fontWeight: FontWeight.bold,
          ),
          headline1: TextStyle(
            fontFamily: 'Jomhuria',
            fontSize: 42.0,
            color: Colors.white,
          ),
        ),
      ),
      initialRoute: SignInScreen.routeName,
      routes: {
        SignInScreen.routeName: (context) => SignInScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
        ActionAdventureScreen.routeName: (context) => ActionAdventureScreen(),
        ComedyScreen.routeName: (context) => ComedyScreen(),
        CrimeScreen.routeName: (context) => CrimeScreen(),
        DramaScreen.routeName: (context) => DramaScreen(),
        HorrorScreen.routeName: (context) => HorrorScreen(),
        MusicalScreen.routeName: (context) => MusicalScreen(),
        SciFiScreen.routeName: (context) => SciFiScreen(),
        //FavoritesScreen.routeName: (context) => FavoritesScreen(),
      },
    );
  }
}
