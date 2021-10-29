// 가장 먼저 material 라이브러리 import
// 이 라이브러리가있어야 sdk에서 디자인 테마요소를 가져올 수 있음

import 'package:flutter/material.dart';

void main() => runApp(MyApp()); //앱의 시작점,의  runApp: 플러터 최상위 위치 함수
// runApp()의 argument로는 반드시 위젯이라는 요소가 들어가야한다.
// MyApp() : 우리가 직접 만들어야하는 위젯 (Custom Widget), 최상위 위젯, 함수가 아닌 위젯이다 !

//MyApp : 뼈대를 만든다, 정적이다

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp( // 이 위젯도 argument를 가져야한다. (title, theme, home)
      title: 'First app', //앱을 총칭하는 이름
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
    home: MyHomePage(),
    );
  }
}

class  MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Bar'),
      ),
      body:Center(
        child: Column(
          children:[
            Text('Hello'),
            Text('Hello2'),
            Text('Hello3'),
          ],
        ),
      ) ,
    );
  }
}

//MyApp과 MyHomePage는 custom widget, AppBar, Scapffold는 기존에 있는 위