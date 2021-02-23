import 'package:flutter/material.dart';
import 'package:helloworld/screen/home_screen.dart';
import 'package:helloworld/widget/bottom_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TabController controller;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'ncavchlFlix',
      theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.black,
          accentColor: Colors.white,
      ),
      home: DefaultTabController(
        length:4,
        child: Scaffold(
          body: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: <Widget>[
              HomeScreen(),
              Container(child:Center(child:Text('search'),),),
              Container(child:Center(child:Text('save'),),),
              Container(child:Center(child:Text('list'),),),
            ],
          ),
          bottomNavigationBar: Bottom(),
        ),
      ),
    );
  }
}