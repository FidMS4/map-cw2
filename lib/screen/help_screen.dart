import 'package:flutter/material.dart';

class HelpScreen extends StatelessWidget {
  static const routeName = '/helpScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Help Screen', style: Theme.of(context).textTheme.headline6),
      ),
      body: Card(
        color: Colors.yellow,
        elevation: 25.0,
        margin: EdgeInsets.all(12.0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24.0)),
        shadowColor: Colors.red[900],
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Please choose any category from the main screen. Select a poster by long pressing it, then click on the top right icon to save it/them to the Favorites page located in the drawer.',
            style: TextStyle(
              fontFamily: 'Federo',
              fontSize: 25.0,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
