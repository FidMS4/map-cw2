import 'package:CreativeWork2/model/mysignin.dart';
import 'package:CreativeWork2/screen/actionadventure_screen.dart';
import 'package:CreativeWork2/screen/comedy_screen.dart';
import 'package:CreativeWork2/screen/crime_screen.dart';
import 'package:CreativeWork2/screen/drama_screen.dart';
import 'package:CreativeWork2/screen/help_screen.dart';
import 'package:CreativeWork2/screen/favorites_screen.dart';
import 'package:CreativeWork2/screen/horrorthriller_screen.dart';
import 'package:CreativeWork2/screen/musical_screen.dart';
import 'package:CreativeWork2/screen/scifantasy_screen.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  static const routeName = '/homeScreen';
  UserRecord user;
  @override
  Widget build(BuildContext context) {
    user = ModalRoute.of(context).settings.arguments;
    return WillPopScope(
      onWillPop: () => Future.value(false),
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('Categories', style: Theme.of(context).textTheme.headline6),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              Container(
                color: Colors.red[900],
                height: 55.0,
                child: DrawerHeader(
                  child: Text('Welcome, ${user.name}!', style: TextStyle(fontSize: 22.0)),
                ),
              ),
              ListTile(
                leading: Icon(Icons.favorite, color: Colors.red[500]),
                title: Text('Favorites', style: TextStyle(fontSize: 20.0)),
                onTap: () => Navigator.pushNamed(context, FavoritesScreen.routeName),
              ),
              ListTile(
                leading: Icon(Icons.help_center, color: Colors.yellow),
                title: Text('Help', style: TextStyle(fontSize: 20.0)),
                onTap: () => Navigator.pushNamed(context, HelpScreen.routeName),
              ),
              ListTile(
                leading: Icon(Icons.exit_to_app, color: Colors.blue),
                title: Text('Sign Out', style: TextStyle(fontSize: 20.0)),
                onTap: () => Navigator.of(context).pushNamedAndRemoveUntil(
                    '/signInScreen',
                    (Route<dynamic> route) => false), //clears text from switching screens
              ),
            ],
          ),
        ),
        body: ListView(
          children: <Widget>[
            Center(
                child: Text('Please choose a category',
                    style: Theme.of(context).textTheme.headline1)),
            Card(
              child: ListTile(
                onTap: () =>
                    Navigator.pushNamed(context, ActionAdventureScreen.routeName),
                tileColor: Colors.grey[850],
                leading: Icon(Icons.movie_filter_outlined, size: 40.0),
                title: Text('Action / Adventure',
                    style: Theme.of(context).textTheme.headline1),
                trailing: Icon(Icons.arrow_forward, size: 30.0),
              ),
            ),
            Card(
              child: ListTile(
                onTap: () => Navigator.pushNamed(context, ComedyScreen.routeName),
                tileColor: Colors.grey[850],
                leading: Icon(Icons.movie_filter_outlined, size: 40.0),
                title: Text('Comedy', style: Theme.of(context).textTheme.headline1),
                trailing: Icon(Icons.arrow_forward, size: 30.0),
              ),
            ),
            Card(
              child: ListTile(
                onTap: () => Navigator.pushNamed(context, CrimeScreen.routeName),
                tileColor: Colors.grey[850],
                leading: Icon(Icons.movie_filter_outlined, size: 40.0),
                title: Text('Crime', style: Theme.of(context).textTheme.headline1),
                trailing: Icon(Icons.arrow_forward, size: 30.0),
              ),
            ),
            Card(
              child: ListTile(
                onTap: () => Navigator.pushNamed(context, DramaScreen.routeName),
                tileColor: Colors.grey[850],
                leading: Icon(Icons.movie_filter_outlined, size: 40.0),
                title: Text('Drama', style: Theme.of(context).textTheme.headline1),
                trailing: Icon(Icons.arrow_forward, size: 30.0),
              ),
            ),
            Card(
              child: ListTile(
                onTap: () => Navigator.pushNamed(context, HorrorScreen.routeName),
                tileColor: Colors.grey[850],
                leading: Icon(Icons.movie_filter_outlined, size: 40.0),
                title: Text('Horror / Thriller',
                    style: Theme.of(context).textTheme.headline1),
                trailing: Icon(Icons.arrow_forward, size: 30.0),
              ),
            ),
            Card(
              child: ListTile(
                onTap: () => Navigator.pushNamed(context, MusicalScreen.routeName),
                tileColor: Colors.grey[850],
                leading: Icon(Icons.movie_filter_outlined, size: 40.0),
                title: Text('Musical', style: Theme.of(context).textTheme.headline1),
                trailing: Icon(Icons.arrow_forward, size: 30.0),
              ),
            ),
            Card(
              child: ListTile(
                onTap: () => Navigator.pushNamed(context, SciFiScreen.routeName),
                tileColor: Colors.grey[850],
                leading: Icon(Icons.movie_filter_outlined, size: 40.0),
                title: Text('Sci-Fi / Fantasy',
                    style: Theme.of(context).textTheme.headline1),
                trailing: Icon(Icons.arrow_forward, size: 30.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
