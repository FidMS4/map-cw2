import 'package:CreativeWork2/controller/flip_controller.dart';
import 'package:CreativeWork2/model/backside.dart';
import 'package:CreativeWork2/model/movie_list.dart';
import 'package:flutter/material.dart';

final double posterWidth = 280.0;

class MusicalScreen extends StatefulWidget {
  static const routeName = '/musicalScreen';
  @override
  State<StatefulWidget> createState() {
    return _MusicalState();
  }
}

class _MusicalState extends State<MusicalScreen> {
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
                  icon: Icon(Icons.favorite_sharp, color: Colors.blue),
                  onPressed: con.addFavorites,
                ),
              ]
            : null,
        title: Text('Musical', style: Theme.of(context).textTheme.headline6),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 20.0),
        scrollDirection: Axis.horizontal,
        itemCount: musicalList.length,
        itemBuilder: con.getMovieList,
      ),
    );
  }
}

class _Controller {
  _MusicalState state;
  _Controller(this.state);
  List<int> selected;
  final Color selectedColor = Colors.blueGrey[700];
  final Color unselectedColor = Colors.black;
  final List<GlobalObjectKey<FlipPosterState>> formKeyList =
      List.generate(7, (index) => GlobalObjectKey<FlipPosterState>(index));

  Widget getMovieList(BuildContext context, int index) {
    return InkWell(
      key: formKeyList[index],
      onLongPress: () {
        _longPress(context, index);
      },
      child: Card(
        color: (selected != null && selected.indexOf(index) >= 0)
            ? selectedColor
            : unselectedColor,
        child: Column(
          children: [
            FlipPoster(
              front: Container(
                height: MediaQuery.of(context).size.height * 0.7,
                width: posterWidth,
                child: Image.network(musicalList[index].imageURL),
              ),
              back: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 2.0),
                ),
                height: MediaQuery.of(context).size.height * 0.7,
                width: posterWidth,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      musicalListBackside[index].gif,
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: musicalListBackside[index].summary,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: musicalList[index].title,
            ),
            Row(
              children: [
                for (var i = 0; i < musicalList[index].stars; i++)
                  Icon(Icons.star, color: Colors.yellow[800]),
                for (var i = 0; i < musicalList[index].halfStar; i++)
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
          selected.removeWhere((value) => value == index);
          if (selected.length == 0) selected = null;
        }
      });
    }
  }

  void addFavorites() {
    state.render(() {
      for (int i = 0; i <= selected.length - 1; i++) {
        favoritesList.add(musicalList.elementAt(selected[i]));
      }
      selected = null;
    });
  }
}
