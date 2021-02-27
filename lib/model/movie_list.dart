import 'package:flutter/material.dart';

class Movie {
  Text title; //had to change to Text type in order to manage font for larger movie titles
  int stars;
  int halfStar;
  String imageURL;

  Movie({
    this.title,
    this.stars,
    this.halfStar,
    this.imageURL,
  });
}

var actionAdventureList = [
  Movie(
    title: Text('American Sniper (2014)', style: TextStyle(fontSize: 20.0)),
    stars: 4,
    halfStar: 0,
    imageURL:
        'https://images-na.ssl-images-amazon.com/images/I/61pGtb7otnL._AC_SL1111_.jpg',
  ),
  Movie(
    title: Text('Django Unchained (2012)', style: TextStyle(fontSize: 20.0)),
    stars: 4,
    halfStar: 0,
    imageURL:
        'https://images-na.ssl-images-amazon.com/images/I/81Z%2BlBcAYWL._SY445_.jpg',
  ),
  Movie(
    title: Text('Dunkirk (2017)', style: TextStyle(fontSize: 20.0)),
    stars: 4,
    halfStar: 1,
    imageURL:
        'https://m.media-amazon.com/images/M/MV5BN2YyZjQ0NTEtNzU5MS00NGZkLTg0MTEtYzJmMWY3MWRhZjM2XkEyXkFqcGdeQXVyMDA4NzMyOA@@._V1_.jpg',
  ),
  Movie(
    title: Text('Inglorious Basterds (2009)', style: TextStyle(fontSize: 20.0)),
    stars: 4,
    halfStar: 1,
    imageURL:
        'https://m.media-amazon.com/images/M/MV5BOTJiNDEzOWYtMTVjOC00ZjlmLWE0NGMtZmE1OWVmZDQ2OWJhXkEyXkFqcGdeQXVyNTIzOTk5ODM@._V1_.jpg',
  ),
  Movie(
    title: Text('Max Mad: Fury Road (2015)', style: TextStyle(fontSize: 20.0)),
    stars: 4,
    halfStar: 1,
    imageURL:
        'https://cdn.shopify.com/s/files/1/1416/8662/products/mad_max_fury_road_2015_advance_original_film_artB_69310cd2-a499-45fc-a12d-df89480c4c99_5000x.jpg?v=1573593327',
  ),
  Movie(
    title: Text('The Dark Knight (2008)', style: TextStyle(fontSize: 20.0)),
    stars: 5,
    halfStar: 0,
    imageURL: 'https://images-na.ssl-images-amazon.com/images/I/41I2BvAEvIL._AC_.jpg',
  ),
  Movie(
    title: Text('The Grey (2011)', style: TextStyle(fontSize: 20.0)),
    stars: 3,
    halfStar: 1,
    imageURL: 'https://upload.wikimedia.org/wikipedia/en/2/27/The_Grey_Poster.jpg',
  ),
];

//------------------------------------------------------------------------------------------------------------------------------------------------------

var comedyList = [
  Movie(
    title: Text('Anchorman (2004)', style: TextStyle(fontSize: 20.0)),
    stars: 4,
    halfStar: 0,
    imageURL: 'https://images-na.ssl-images-amazon.com/images/I/51gbWRaL0IL.jpg',
  ),
  Movie(
    title: Text('Dumb and Dumber (1994)', style: TextStyle(fontSize: 20.0)),
    stars: 4,
    halfStar: 0,
    imageURL:
        'https://m.media-amazon.com/images/M/MV5BZDQwMjNiMTQtY2UwYy00NjhiLTk0ZWEtZWM5ZWMzNGFjNTVkXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UY1200_CR93,0,630,1200_AL_.jpg',
  ),
  Movie(
    title: Text('Knives Out (2019)', style: TextStyle(fontSize: 20.0)),
    stars: 4,
    halfStar: 1,
    imageURL:
        'https://img01.mgo-images.com/image/thumbnail/v2/content/MMV2E4F63D2F3C343356393248C80587CD18.jpeg',
  ),
  Movie(
    title: Text("There's something about Mary (1998)", style: TextStyle(fontSize: 18.0)),
    stars: 3,
    halfStar: 1,
    imageURL:
        'https://m.media-amazon.com/images/M/MV5BZWFlZjE5OTYtNWY0ZC00MzgzLTg5MjUtYTFkZjk2NjJkYjM0XkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_.jpg',
  ),
  Movie(
    title: Text('Tropic Thunder (2008)', style: TextStyle(fontSize: 20.0)),
    stars: 4,
    halfStar: 1,
    imageURL:
        'https://images-na.ssl-images-amazon.com/images/I/81kSuSKq7rL._AC_SL1337_.jpg',
  ),
];

//------------------------------------------------------------------------------------------------------------------------------------------------------

var crimeList = [
  Movie(
    title: Text('Blow (2001)', style: TextStyle(fontSize: 20.0)),
    stars: 4,
    halfStar: 0,
    imageURL:
        'https://m.media-amazon.com/images/M/MV5BYjg5ZDkzZWEtZDQ2ZC00Y2ViLThhMzYtMmIxZDYzYTY2Y2Y2XkEyXkFqcGdeQXVyODAwMTU1MTE@._V1_.jpg',
  ),
  Movie(
    title: Text('Goodfellas (1990)', style: TextStyle(fontSize: 20.0)),
    stars: 5,
    halfStar: 0,
    imageURL: 'https://www.filmsite.org/posters/goodfellas.jpg',
  ),
  Movie(
    title: Text('Seven (1995)', style: TextStyle(fontSize: 20.0)),
    stars: 4,
    halfStar: 0,
    imageURL:
        'https://i.pinimg.com/originals/c7/ec/62/c7ec6285f6ba7fdbd29e3a9f3b5244f9.jpg',
  ),
  Movie(
    title: Text('The Departed (2006)', style: TextStyle(fontSize: 20.0)),
    stars: 4,
    halfStar: 1,
    imageURL: 'https://images-na.ssl-images-amazon.com/images/I/51J5V86vqiL._SY445_.jpg',
  ),
];

//------------------------------------------------------------------------------------------------------------------------------------------------------

var dramaList = [
  Movie(
    title: Text('1917 (2019)', style: TextStyle(fontSize: 20.0)),
    stars: 4,
    halfStar: 0,
    imageURL:
        'https://images-na.ssl-images-amazon.com/images/I/61yYNBjFRjL._AC_SL1500_.jpg',
  ),
  Movie(
    title: Text('Hacksaw Ridge (2016)', style: TextStyle(fontSize: 20.0)),
    stars: 4,
    halfStar: 0,
    imageURL:
        'https://m.media-amazon.com/images/M/MV5BMjQ1NjM3MTUxNV5BMl5BanBnXkFtZTgwMDc5MTY5OTE@._V1_.jpg',
  ),
  Movie(
    title: Text('The Green Mile (1999)', style: TextStyle(fontSize: 20.0)),
    stars: 4,
    halfStar: 0,
    imageURL: 'https://images-na.ssl-images-amazon.com/images/I/51mvJdnlXrL._AC_.jpg',
  ),
  Movie(
    title: Text('The Theory of Everything (2014)', style: TextStyle(fontSize: 20.0)),
    stars: 4,
    halfStar: 0,
    imageURL:
        'https://m.media-amazon.com/images/M/MV5BMTAwMTU4MDA3NDNeQTJeQWpwZ15BbWU4MDk4NTMxNTIx._V1_.jpg',
  ),
  Movie(
    title: Text('The Truman Show (1998)', style: TextStyle(fontSize: 20.0)),
    stars: 4,
    halfStar: 1,
    imageURL: 'https://images-na.ssl-images-amazon.com/images/I/91QkSivUP9L._SL1500_.jpg',
  ),
  Movie(
    title: Text('The Wolf of Wall Street (2013)', style: TextStyle(fontSize: 20.0)),
    stars: 4,
    halfStar: 1,
    imageURL:
        'https://upload.wikimedia.org/wikipedia/en/d/d8/The_Wolf_of_Wall_Street_%282013%29.png',
  ),
];

//------------------------------------------------------------------------------------------------------------------------------------------------------

var horrorList = [
  Movie(
    title: Text('It Follows (2014)', style: TextStyle(fontSize: 20.0)),
    stars: 4,
    halfStar: 0,
    imageURL:
        'https://indieethos.files.wordpress.com/2015/03/it-follows-movie-poster.jpg',
  ),
  Movie(
    title: Text('Ready or Not (2019)', style: TextStyle(fontSize: 20.0)),
    stars: 4,
    halfStar: 0,
    imageURL:
        'https://images-na.ssl-images-amazon.com/images/I/512lBV9w4YL._AC_SY445_.jpg',
  ),
  Movie(
    title: Text('The Invisible Man (2020)', style: TextStyle(fontSize: 20.0)),
    stars: 4,
    halfStar: 0,
    imageURL:
        'https://upload.wikimedia.org/wikipedia/en/3/3a/The_Invisible_Man_%282020_film%29_-_release_poster.jpg',
  ),
  Movie(
    title: Text('The Witch (2015)', style: TextStyle(fontSize: 20.0)),
    stars: 4,
    halfStar: 0,
    imageURL: 'https://images-na.ssl-images-amazon.com/images/I/41nq0AJrcrL._AC_.jpg',
  ),
  Movie(
    title: Text('Us (2019)', style: TextStyle(fontSize: 20.0)),
    stars: 4,
    halfStar: 1,
    imageURL:
        'https://images-na.ssl-images-amazon.com/images/I/91jatiUZjtL._AC_SL1500_.jpg',
  ),
];

//------------------------------------------------------------------------------------------------------------------------------------------------------

var musicalList = [
  Movie(
    title: Text('A Star is Born (2018)', style: TextStyle(fontSize: 20.0)),
    stars: 4,
    halfStar: 1,
    imageURL:
        'https://images-na.ssl-images-amazon.com/images/I/61UNXRy-zhL._AC_SY741_.jpg',
  ),
  Movie(
    title: Text('La La Land (2016)', style: TextStyle(fontSize: 20.0)),
    stars: 4,
    halfStar: 1,
    imageURL:
        'https://cdn.shopify.com/s/files/1/0747/3829/products/HP2843_1d292a85-48d3-4b21-a996-d6be4c24b7f8_1024x1024.jpg?v=1571445026',
  ),
  Movie(
    title: Text('The Greatest Showman (2017)', style: TextStyle(fontSize: 20.0)),
    stars: 4,
    halfStar: 0,
    imageURL:
        'https://m.media-amazon.com/images/M/MV5BMjI1NDYzNzY2Ml5BMl5BanBnXkFtZTgwODQwODczNTM@._V1_.jpg',
  ),
  Movie(
    title: Text('Walk the Line (2005)', style: TextStyle(fontSize: 20.0)),
    stars: 4,
    halfStar: 0,
    imageURL:
        'https://i.pinimg.com/originals/30/15/01/3015018efcb8b29e3b690106878658de.jpg',
  ),
];

//------------------------------------------------------------------------------------------------------------------------------------------------------

var sciFiList = [
  Movie(
    title: Text('District 9 (2009)', style: TextStyle(fontSize: 20.0)),
    stars: 4,
    halfStar: 1,
    imageURL:
        'https://cdn.shopify.com/s/files/1/1416/8662/products/district_9_2009_advance_original_film_art_f618887d-c4b1-47e4-96c1-c2b638223852_1200x.jpg?v=1597868509',
  ),
  Movie(
    title: Text('Eternal Sunshine of the Spotless Mind (2004)',
        style: TextStyle(fontSize: 17.0)),
    stars: 4,
    halfStar: 1,
    imageURL: 'https://images-na.ssl-images-amazon.com/images/I/51%2Bwf-vBCUL._AC_.jpg',
  ),
  Movie(
    title: Text('Jurassic Park (1993)', style: TextStyle(fontSize: 20.0)),
    stars: 4,
    halfStar: 1,
    imageURL:
        'https://imgc.allpostersimages.com/img/print/u-g-F9DGRC0.jpg?w=550&h=550&p=0',
  ),
  Movie(
    title: Text('King Kong (2005)', style: TextStyle(fontSize: 20.0)),
    stars: 4,
    halfStar: 1,
    imageURL:
        'https://m.media-amazon.com/images/M/MV5BMjYxYmRlZWYtMzAwNC00MDA1LWJjNTItOTBjMzlhNGMzYzk3XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg',
  ),
  Movie(
    title: Text('Lord of the Rings: The Return of the King (2003)',
        style: TextStyle(fontSize: 17.0)),
    stars: 5,
    halfStar: 0,
    imageURL:
        'https://images-na.ssl-images-amazon.com/images/I/71X6YzwV0gL._AC_SL1024_.jpg',
  ),
  Movie(
    title: Text("Pan's Labyrinth (2006)", style: TextStyle(fontSize: 20.0)),
    stars: 4,
    halfStar: 1,
    imageURL: 'https://m.media-amazon.com/images/I/717c+6MsdDL._AC_SL1000_.jpg',
  ),
  Movie(
    title: Text('The Curious Case of Benjamin Button (2008)',
        style: TextStyle(fontSize: 17.0)),
    stars: 3,
    halfStar: 1,
    imageURL: 'https://images-na.ssl-images-amazon.com/images/I/71A8mO-OqBL._SL1500_.jpg',
  ),
];
