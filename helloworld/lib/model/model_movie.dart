class Movie {
  final String title;
  final String keyword;
  final String poster;
  final bool like;


  Movie.fromMap(Map<String, dynamic> map)
  : title = map['title'],
    keyword = map['keyword'],
    poster = map['poster'],
    like = map['like'];

  @override 
  String toString() => "Movie<$title:$keyword>";

}

//출력하는 영화 모델, 데이터 관리 