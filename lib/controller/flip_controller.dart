// code modified and recieved from https://github.com/fedeoo/flip_card/blob/master/lib/flip_card.dart
// and also from https://dartpad.dev/1908f087952174904e3d2ef7d6947dce

import 'dart:math';
import 'package:flutter/material.dart';

class FlipPoster extends StatefulWidget {
  final Widget front, back;
  FlipPoster({Key key, @required this.front, @required this.back}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return FlipPosterState();
  }
}

class FlipPosterState extends State<FlipPoster>
    with SingleTickerProviderStateMixin<FlipPoster> { //had to add <FlipPoster>
  Animation _animation;
  AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(duration: Duration(milliseconds: 300), vsync: this);
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (BuildContext context, Widget child) {
        bool isFront = _controller.value < .5;
        return InkWell(
          onTap: () {
            if (_animation.isDismissed) {
              _controller.forward();
            } else if (_animation.isCompleted) {
              _controller.reverse();
            }
          },
          child: Transform(
            transform: Matrix4.identity()
              ..setEntry(3, 2, 0.001)
              ..rotateY(pi * _animation.value + (isFront ? 0 : pi)),
            alignment: FractionalOffset.center,
            child: isFront ? widget.front : widget.back,
          ),
        );
      },
    );
  }
}
