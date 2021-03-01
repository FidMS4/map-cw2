import 'package:CreativeWork2/model/backside.dart';
import 'package:CreativeWork2/model/movie_list.dart';
import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

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
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          'Action / Adventure',
          style: TextStyle(
              fontFamily: 'Federo', fontSize: 29.0, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.red[900],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 20.0),
        scrollDirection: Axis.horizontal,
        itemCount: actionAdventureList.length,
        itemBuilder: con.getMovieList,
      ),
    );
  }
}

class _Controller {
  _ActionAdventureState state;
  _Controller(this.state);
  List<int> selected;
  final Color selectedColor = Colors.blueGrey[700];
  final Color unselectedColor = Colors.black;
  final List<GlobalObjectKey<FlipCardState>> formKeyList =
      List.generate(7, (index) => GlobalObjectKey<FlipCardState>(index));

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
            FlipCard(
              front: Container(
                height: posterHeight,
                width: posterWidth,
                child: Image.network(actionAdventureList[index].imageURL),
              ),
              back: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 2.0),
                ),
                height: posterHeight,
                width: posterWidth,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      actionAdventureListBackside[index].gif,
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: actionAdventureListBackside[index].summary,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: actionAdventureList[index].title,
            ),
            Row(
              children: [
                for (var i = 0; i < actionAdventureList[index].stars; i++)
                  Icon(Icons.star, color: Colors.yellow[800]),
                for (var i = 0; i < actionAdventureList[index].halfStar; i++)
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
