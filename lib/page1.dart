// 가장 먼저 material 라이브러리 import
// 이 라이브러리가있어야 sdk에서 디자인 테마요소를 가져올 수 있음

import 'package:flutter/material.dart';

//void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BBANTO', //앱을 총칭하는 이름
      home: Grade(),
    );
  }
}

class  Grade  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[800],
      appBar: AppBar(
        title: Text('BBANTO'),
        centerTitle: true,
        backgroundColor: Colors.amber[700],
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget> [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/profile.png'),
                radius:60.0,
              ),
            ),
            Divider(
              height:60.0, //divider 위 아래 사이의 넓이
              color:Colors.grey[850],
              thickness: 0.5,
              endIndent:30.0 ,
            ),
            Text('NAME',
              style: TextStyle(
                color: Colors.white,
                letterSpacing:2.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text('BBANTO',
              style: TextStyle(
                  color:Colors.white ,
                  letterSpacing: 2.0,
                  fontSize:28.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text('BBANTO POWER LEVEL',
              style: TextStyle(
                color: Colors.white,
                letterSpacing:2.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text('14',
              style: TextStyle(
                  color:Colors.white ,
                  letterSpacing: 2.0,
                  fontSize:28.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              children:  <Widget>[
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0,
                ),
                Text('using ligthsaber',
                    style: TextStyle(
                        fontSize: 16.0,
                        letterSpacing: 1.0
                    )),
              ],
            ),
            Row(
              children:  <Widget>[
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0,
                ),
                Text('face heror tatoo',
                    style: TextStyle(
                        fontSize: 16.0,
                        letterSpacing: 1.0
                    )),
              ],
            ),
            Row(
              children:  <Widget>[
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0,
                ),
                Text('fire frames',
                    style: TextStyle(
                        fontSize: 16.0,
                        letterSpacing: 1.0
                    )),
              ],
            ),
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/profile2.png'),
                radius:40.0,
                backgroundColor: Colors.amber[800],
              ),
            ),
          ],
        ),
      ),


    );
  }
}
//MyApp과 MyHomePage는 custom widget, AppBar, Scapffold는 기존에 있는 위