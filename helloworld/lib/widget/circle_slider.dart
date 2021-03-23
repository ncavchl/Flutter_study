import 'package:flutter/material.dart';
import 'package:helloworld/model/model_movie.dart';

class CirclesSlider extends StatelessWidget {
  final List<Movie> movies;
  CirclesSlider({this.movies});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(7),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
      )
    );
  }
//ff
}
