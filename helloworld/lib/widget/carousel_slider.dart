import 'dart:html';

import 'package:flutter/material.dart';
import 'package:helloworld/model/model_movie.dart';

class CarouselImage extends StatefulWidget {
  final List<Movie> movies;
  CarouselImage({this.movies});
  _CarouselImageState createState() => _CarouselImageState();
}

class _CarouselImageState extends State<CarouselImage> {
  List<Movie> movies;
  List<Widget> images;
  List<String> kyewords;
  List<bool> likes;
  int _currentPage = 0;
  String _currentKeyword;

  @override 
  void initState() {
    super.initState();
    movies = widget.movies;
    images = movies.map((m) => Image.asset('./images/' + m.poster)).toList();
    keywords = movies.map((m) => m.keyword).toList();
    likes = movies.map((m) => m.like).toList();
    _currentKeyword = keywords[0];
  }

  @override 
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget> [
          Container(
            padding: EdgeInsets.all(20),
          ),
          CarouselSlider(
            items: images, 
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
                _currentKeyword = kyewords[_currentPage];
              });
            },
          },    
          Container(
            child: Text(_currentKeyword),
          ),
        ],
      },
    );
  }
}
