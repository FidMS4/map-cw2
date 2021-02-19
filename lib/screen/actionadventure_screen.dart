import 'package:CreativeWork2/model/movie_list.dart';
import 'package:flutter/material.dart';

final double posterHeight = 425.0;
final double posterWidth = 280.0;

class ActionAdventureScreen extends StatefulWidget {
  static const routeName = '/actionAdventureScreen';
  @override
  State<StatefulWidget> createState() {
    return _ActionAdventureState();
  }
}

class _ActionAdventureState extends State<ActionAdventureScreen> {
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
      appBar: AppBar(
        title: Text('Action / Adventure', style: Theme.of(context).textTheme.headline6),
        backgroundColor: Colors.red[900],
      ),
      body: ListView(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 20.0),
        scrollDirection: Axis.horizontal,
        children: con.getMovieList(),
      ),
    );
  }
}

class _Controller {
  _ActionAdventureState state;
  _Controller(this.state);

  List<Widget> getMovieList() {
    return actionAdventureList.map((movie) {
      return InkWell(
        onDoubleTap: () {
          _flipPic();
        },
        child: Column(
          children: [
            Container(
              height: posterHeight,
              width: posterWidth,
              child: Image.network(movie.imageURL),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: movie.title,
            ),
            Row(
              children: [
                for (var i = 0; i < movie.stars; i++)
                  Icon(Icons.star, color: Colors.yellow[800]),
                for (var i = 0; i < movie.halfStar; i++)
                  Icon(Icons.star_half, color: Colors.yellow[800]),
              ],
            ),
          ],
        ),
      );
    }).toList();
  }

  void _flipPic() {}
}
