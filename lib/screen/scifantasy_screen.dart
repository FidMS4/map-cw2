import 'package:CreativeWork2/model/movie_list.dart';
import 'package:flutter/material.dart';

final double posterHeight = 425.0;
final double posterWidth = 280.0;

class SciFiScreen extends StatefulWidget {
  static const routeName = '/sciFantasyScreen';
  @override
  State<StatefulWidget> createState() {
    return _SciFiState();
  }
}

class _SciFiState extends State<SciFiScreen> {
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
        title: Text('SciFi / Fantasy', style: Theme.of(context).textTheme.headline6),
        backgroundColor: Colors.red[900],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 20.0),
        scrollDirection: Axis.horizontal,
        itemCount: sciFiList.length,
        itemBuilder: con.getMovieList,
      ),
    );
  }
}

class _Controller {
  _SciFiState state;
  _Controller(this.state);
  List<int> selected;
  final Color selectedColor = Colors.blueGrey[700];
  final Color unselectedColor = Colors.black;

  Widget getMovieList(BuildContext context, int index) {
    return InkWell(
      onLongPress: () {
        _longPress(context, index);
      },
      child: Card(
        color: (selected != null && selected.indexOf(index) >= 0)
            ? selectedColor
            : unselectedColor,
        child: Column(
          children: [
            Container(
              height: posterHeight,
              width: posterWidth,
              child: Image.network(sciFiList[index].imageURL),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: sciFiList[index].title,
            ),
            Row(
              children: [
                for (var i = 0; i < sciFiList[index].stars; i++)
                  Icon(Icons.star, color: Colors.yellow[800]),
                for (var i = 0; i < sciFiList[index].halfStar; i++)
                  Icon(Icons.star_half, color: Colors.yellow[800]),
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
          //cancel the selection
          selected.removeWhere((value) => value == index);
          if (selected.length == 0) selected = null;
        }
      });
    }
  }
}
