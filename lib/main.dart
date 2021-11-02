import 'package:flutter/material.dart' ;

void main()=> runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Appbar',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home:MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appbar icon menu'),
        centerTitle: true,
        elevation:0.0,
        leading:IconButton(
          icon: Icon(Icons.menu),
           onPressed: () {
            print('menu button is clicked ');
           },
        ),
        //leading: 간단한 위젯이나 타이틀을 왼쪽에 위치시키는 기능을 한
        actions:<Widget>[
          IconButton(
      icon: Icon(Icons.shopping_cart),
      onPressed: () {
        print('shopping cart button is clicked ');
      },
    ),
        IconButton(
        icon: Icon(Icons.search),
        onPressed: ()  {
        print('search button is clicked ');
    },
    ),

        ],
      ),

    );
  }
}
