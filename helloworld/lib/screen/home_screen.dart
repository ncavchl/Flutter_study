import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:helloworld/model/model_movie.dart';
import 'package:helloworld/widget/box_slider.dart';
import 'package:helloworld/widget/carousel_slider.dart';
import 'package:helloworld/widget/circle_slider.dart';

class HomeScreen extends StatefulWidget {
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Firestore firestore = Firestore.instance;
  Stream<QuerySnapshot> streamData;

  @override
  void initState() {
    super.initState();
    streamData = firestore.collection('movie').snapshots();
  }

  Widget _fecthData(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream : Firestore.instance.collection('movie').snapshots(),
      builder: (context, snapshot){
        if(!snapshot.hasData) {
          print('연동안됨?');
          return LinearProgressIndicator();
        }
        return _buildBody(context, snapshot.data.documents);
      },
    );
  }

  Widget _buildBody(BuildContext context ,List<DocumentSnapshot> snapshot){
    List<Movie> movies = snapshot.map((d) => Movie.fromSnapshot(d)).toList();
    return ListView(
      children: <Widget>[
        Stack(
          children: <Widget>[
            CarouselImage(movies:movies),
            TopBar(),
          ],
        ),
        CirclesSlider(movies: movies,),
        BoxSlider(movies: movies,),

      ],
    );
  }

  Widget build(BuildContext context) {
    return _fecthData(context);
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
