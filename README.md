# Flutter_study
FIRST_flutter 

- 20210202 세팅완료 https://flutter-ko.dev/docs/get-started/install/windows
- 20210218~ 인프런 넷플릭스 UI 클론 코딩 강의 [Flutter + Firebase]
  https://www.inflearn.com/course/flutter-netflix-clone-app#
  >20210218 세팅완료

![화면 기록 2021-03-24 오전 2 32 35](https://user-images.githubusercontent.com/48319693/112191467-64687280-8c49-11eb-907e-6b0ec94bf267.gif)

20210324 - netflis clone coding
2021-402- firebase 



#

## back button 감지와 앱종료
WillPopScope() 로 scaffold()를 감싸보자

``` Dart 
  BuildContext ctx;
  @override
  Widget build(BuildContext context) {
    ctx = context;

    //WillPopScope 이전 경로로 돌아가는 것을 막는 클래스
    return WillPopScope(
      child: Scaffold(
        ...
      ),
      onWillPop: () {
        _onWillPop();
      },
    );
  }

  //뒤로가기 클릭시 
  Future<bool> _onWillPop() async {
    return (await showDialog(
          context: ctx,
          builder: (context) => new AlertDialog(
            title: new Text('앱 종료 안내'),
            content: new Text('로그아웃 하시겠습니까? \n로그아웃시 앱이 종료됩니다.'),
            actions: <Widget>[
              new FlatButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: new Text('취소'),
              ),
              new FlatButton(
                onPressed: () => SystemNavigator.pop(),
                child: new Text('로그아웃'),
              ),
            ],
          ),
        )) ??
        false;
  }
  
```
SystemNavigator 사용을 위해 아래 추가 필요
``` dart
import 'package:flutter/services.dart';
```

## yahoo finance 지원
``` dart
import 'package:yahoofin/yahoofin.dart';
```
