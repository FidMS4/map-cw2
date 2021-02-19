import 'package:flutter/material.dart';

class Category {
  Text catTitle;
  Icon leadIcon;
  Icon tailIcon;

  Category({
    this.catTitle,
    this.leadIcon,
    this.tailIcon,
  });
}

var categoryList = [
  Category(
    catTitle: Text('Action / Adventure'),
    leadIcon: Icon(Icons.movie, size: 40.0),
    tailIcon: Icon(Icons.arrow_forward, size: 30.0),
  ),
  Category(
    catTitle: Text('Comedy'),
    leadIcon: Icon(Icons.movie, size: 40.0),
    tailIcon: Icon(Icons.arrow_forward, size: 30.0),
  ),
  Category(
    catTitle: Text('Crime'),
    leadIcon: Icon(Icons.movie, size: 40.0),
    tailIcon: Icon(Icons.arrow_forward, size: 30.0),
  ),
  Category(
    catTitle: Text('Drama'),
    leadIcon: Icon(Icons.movie, size: 40.0),
    tailIcon: Icon(Icons.arrow_forward, size: 30.0),
  ),
  Category(
    catTitle: Text('Horror / Thriller'),
    leadIcon: Icon(Icons.movie, size: 40.0),
    tailIcon: Icon(Icons.arrow_forward, size: 30.0),
  ),
  Category(
    catTitle: Text('Musical'),
    leadIcon: Icon(Icons.movie, size: 40.0),
    tailIcon: Icon(Icons.arrow_forward, size: 30.0),
  ),
  Category(
    catTitle: Text('Sci-Fi / Fantasy'),
    leadIcon: Icon(Icons.movie, size: 40.0),
    tailIcon: Icon(Icons.arrow_forward, size: 30.0),
  ),
];
