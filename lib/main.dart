import 'package:flutter/material.dart' ;

void main()=> runApp(MyApp());







class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState(){
    return MyAppState();
}
}

class MyAppState extends State<MyApp> {

  int count=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Appbar',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home:Scaffold(
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
        body: Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('numbers of click'),
              Text('$count',
                style:Theme.of(context).textTheme.headline4,
              ),

            ],

          ),
        ),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: (){
              setState(() {
                count++;
                print('$count');
              });

            }),

      ),
    );
  }
}

