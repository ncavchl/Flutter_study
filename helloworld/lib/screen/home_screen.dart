import 'package:flutter/material.dart';
import 'package:helloworld/model/model_movie.dart';

class HomeScreen extends StatefulWidget {
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Movie> movies = [
    Movie.fromMap(
      {
        'title' : '배트맨',
        'keyword' : '액션/스릴러/명작',
        'poster' : 'batman.jpg',
        'like' : false
      }
    )
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context){
    // return Container(
    //     child: Center(
    //       child: Text('Real home'),    
    //   ),
    // );
    return TopBar();
  }
}


class TopBar extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 7, 20, 7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Image.asset(
            'images/logo_dog.png', 
            fit: BoxFit.contain,
            height:25,
          ),
          Container(
            padding: EdgeInsets.only(right:1), 
            child: Text(
              'TV 프로그램',
              style: TextStyle(fontSize:14),
            ),
          ),
          Container(
            padding: EdgeInsets.only(right:1), 
            child: Text(
              '영화',
              style: TextStyle(fontSize:14),
            ),
          ),
          Container(
            padding: EdgeInsets.only(right:1), 
            child: Text(
              '내가 찜한 콘텐츠',
              style: TextStyle(fontSize:14),
            ),
          ),
        ],
      ),
    );
  }

}