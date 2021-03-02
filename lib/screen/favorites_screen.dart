import 'package:flutter/material.dart';
import 'package:CreativeWork2/model/movie_list.dart';

class FavoritesScreen extends StatefulWidget {
  static const routeName = '/favortiesScreen';
  @override
  State<StatefulWidget> createState() {
    return _FavoritesState();
  }
}

class _FavoritesState extends State<FavoritesScreen> {
  _Controller con;

  @override
  void initState() {
    super.initState();
    con = _Controller(this);
  }

  void render(fn) {
    setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Favorites', style: Theme.of(context).textTheme.headline6),
        backgroundColor: Colors.red[900],
      ),
      body: ListView.builder(
        itemCount: favoritesList.length,
        itemBuilder: con.getFavs,
      ),
    );
  }
}

class _Controller {
  _FavoritesState state;
  _Controller(this.state);

  Widget getFavs(BuildContext context, int index) {
    return Card(
      margin: EdgeInsets.all(10.0),
      color: Colors.blueGrey,
      elevation: 15.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: favoritesList[index].title,
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.all(15.0),
                  child: Image.network(
                    favoritesList[index].imageURL,
                    height: 70.0,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
