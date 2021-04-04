import 'package:cloud_firestore/cloud_firestore.dart';

class Movie {
  final String title;
  final String keyword;
  final String poster;
  final bool like;
  final DocumentReference reference;


  //test
  Movie.fromMap(Map<String, dynamic> map , {this.reference})
  : title = map['title'],
    keyword = map['keyword'],
    poster = map['poster'],
    like = map['like'];

  Movie.fromSnapshot(DocumentSnapshot snapshot)
    : this.fromMap(snapshot.data, reference: snapshot.reference);

  @override 
  String toString() => "Movie<$title:$keyword>";

}

//출력하는 영화 모델, 데이터 관리 