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
        actions: con.selected != null
            ? [
                IconButton(
                  icon: Icon(Icons.delete, color: Colors.white),
                  onPressed: con.delete,
                ),
              ]
            : null,
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
  List<int> selected;
  final Color selectedColor = Colors.red;
  final Color unselectedColor = Colors.blueGrey;
  var isSelected = false;

  Widget getFavs(BuildContext context, int index) {
    return InkWell(
      onLongPress: () {
        _longPress(context, index);
        isSelected = true;
      },
      child: Card(
        margin: EdgeInsets.all(10.0),
        color: (selected != null && selected.indexOf(index) >= 0)
            ? selectedColor
            : unselectedColor,
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
      ),
    );
  }

  void _longPress(BuildContext context, int index) {
    if (selected == null) {
      state.render(() {
        selected = [];
        selected.add(index);
      });
    } else {
      state.render(() {
        if (selected.indexOf(index) < 0) {
          selected.add(index);
        } else {
          selected.removeWhere((value) => value == index);
          if (selected.length == 0) selected = null;
        }
      });
    }
  }

  void delete() {
    selected.sort();
    state.render(() {
      for (int i = selected.length - 1; i >= 0; i--) {
        favoritesList.removeAt(selected[i]);
      }
      selected = null;
    });
  }
}
