import 'package:flutter/material.dart';
import 'package:helloworld/model/model_movie.dart';
import 'package:helloworld/screen/detail_screen.dart';

class CirclesSlider extends StatelessWidget {
  final List<Movie> movies;
  CirclesSlider({this.movies});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(7),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('미리보기'),
          Container(
            height:120,
            child:ListView(
              scrollDirection: Axis.horizontal,
              children: makeCircleImages(context, movies),
            ),
          )
        ],

      )
    );
  }
}

List<Widget> makeCircleImages(BuildContext context, List<Movie> movies) {
  List<Widget> results = [];
  for (var i=0; i<movies.length; i++){
    results.add(
      InkWell(
        onTap:() {
          Navigator.of(context).push(MaterialPageRoute<Null>(
              fullscreenDialog: true,
              builder: (BuildContext context) {
                return DetailScreen(
                  movie : movies[i],
                );
              }
          ));
        },
        child: Container(
          padding: EdgeInsets.only(right:10),
          child: Align(alignment: Alignment.centerLeft,
              child: CircleAvatar(
                backgroundImage: NetworkImage(movies[i].poster),
                radius: 48,
              ),
          ),
        ),
      ),
    );
  }

  return results;
}
