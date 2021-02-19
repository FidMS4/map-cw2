import 'package:CreativeWork2/screen/actionadventure_screen.dart';
import 'package:CreativeWork2/screen/comedy_screen.dart';
import 'package:CreativeWork2/screen/crime_screen.dart';
import 'package:CreativeWork2/screen/drama_screen.dart';
import 'package:CreativeWork2/screen/horrorthriller_screen.dart';
import 'package:CreativeWork2/screen/musical_screen.dart';
import 'package:CreativeWork2/screen/scifantasy_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/homeScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categories', style: Theme.of(context).textTheme.headline6),
        backgroundColor: Colors.red[900],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text('By Fidel Munoz', style: TextStyle(fontSize: 30.0)),
            ),
            ListTile(
              leading: Icon(Icons.help_center),
              title: Text('Help'),
            ),
            ListTile(
              leading: Icon(Icons.thumb_up),
              title: Text('Rate'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          InkWell(
            onTap: () => Navigator.pushNamed(context, ActionAdventureScreen.routeName),
            child: Card(
              child: ListTile(
                leading: Icon(Icons.movie, size: 40.0),
                title: Text('Action / Adventure',
                    style: Theme.of(context).textTheme.headline1),
                trailing: Icon(Icons.arrow_forward, size: 30.0),
              ),
            ),
          ),
          InkWell(
            onTap: () => Navigator.pushNamed(context, ComedyScreen.routeName),
            child: Card(
              child: ListTile(
                leading: Icon(Icons.movie, size: 40.0),
                title: Text('Comedy', style: Theme.of(context).textTheme.headline1),
                trailing: Icon(Icons.arrow_forward, size: 30.0),
              ),
            ),
          ),
          InkWell(
            onTap: () => Navigator.pushNamed(context, CrimeScreen.routeName),
            child: Card(
              child: ListTile(
                leading: Icon(Icons.movie, size: 40.0),
                title: Text('Crime', style: Theme.of(context).textTheme.headline1),
                trailing: Icon(Icons.arrow_forward, size: 30.0),
              ),
            ),
          ),
          InkWell(
            onTap: () => Navigator.pushNamed(context, DramaScreen.routeName),
            child: Card(
              child: ListTile(
                leading: Icon(Icons.movie, size: 40.0),
                title: Text('Drama', style: Theme.of(context).textTheme.headline1),
                trailing: Icon(Icons.arrow_forward, size: 30.0),
              ),
            ),
          ),
          InkWell(
            onTap: () => Navigator.pushNamed(context, HorrorScreen.routeName),
            child: Card(
              child: ListTile(
                leading: Icon(Icons.movie, size: 40.0),
                title: Text('Horror / Thriller',
                    style: Theme.of(context).textTheme.headline1),
                trailing: Icon(Icons.arrow_forward, size: 30.0),
              ),
            ),
          ),
          InkWell(
            onTap: () => Navigator.pushNamed(context, MusicalScreen.routeName),
            child: Card(
              child: ListTile(
                leading: Icon(Icons.movie, size: 40.0),
                title: Text('Musical', style: Theme.of(context).textTheme.headline1),
                trailing: Icon(Icons.arrow_forward, size: 30.0),
              ),
            ),
          ),
          InkWell(
            onTap: () => Navigator.pushNamed(context, SciFiScreen.routeName),
            child: Card(
              child: ListTile(
                leading: Icon(Icons.movie, size: 40.0),
                title: Text(
                  'Sci-Fi / Fantasy',
                  style: Theme.of(context).textTheme.headline1,
                ),
                trailing: Icon(Icons.arrow_forward, size: 30.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
