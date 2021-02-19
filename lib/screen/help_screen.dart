import 'package:flutter/material.dart';

class HelpScreen extends StatelessWidget {
  static const routeName = '/helpScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Help Screen', style: Theme.of(context).textTheme.headline6),
      ),
      body: Column(
        children: [
          Text(
            'Please choose any category from the main screen. Use the top right icon to add to favorite list after highlighting the desired movie posters. Highlight by long pressing the posters.',
            style: Theme.of(context).textTheme.headline6,
          ),
        ],
      ),
    );
  }
}
