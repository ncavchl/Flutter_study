import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:helloworld/model/model_movie.dart';

class DetailScreen extends StatefulWidget{
  final Movie movie;
  DetailScreen({this.movie});
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  bool like = false;
  @override
  void initState() {
    super.initState();
    like = widget.movie.like;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(
        child: SafeArea(
            child: ListView(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(width: double.maxFinite,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('images/' + widget.movie.poster),
                            fit: BoxFit.cover,

                          ),
                        ),
                      ),
                    ],

                  ),
                  makeMenuButton(),
                ]
            )
        )
    ),
    );
  }
}

Widget makeMenuButton() {
  return Container(

  );
}