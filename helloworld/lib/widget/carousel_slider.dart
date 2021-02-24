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

  @override 
  void initState() {
    super.initState();
  }

  @override 
  Widget build(BuildContext context) {
    return Container();
  }
}
