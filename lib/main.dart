import 'package:flutter/material.dart' ;

void main()=> runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState(){
    return MyAppState();
}
}
class MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    print(context); //lesson17
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
        drawer:Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children:<Widget>[
              UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('assets/profile.png'),
                  backgroundColor: Colors.white,
                ),
                otherAccountsPictures: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/profile2.png'),
                    backgroundColor: Colors.white,
                  ),
                  // CircleAvatar(
                  //   backgroundImage: AssetImage('assets/profile2.png'),
                  //   backgroundColor: Colors.white,
                  // ),

                ],
                accountEmail: Text('21900174@handong.edu'),
                accountName:Text('Eunjin') ,
                onDetailsPressed:(){
                  print('hello');
                },
                decoration: BoxDecoration(
                  color: Colors.red[200],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                ),
                ),
              ListTile(
               leading:Icon(Icons.home,
               color: Colors.grey[850],) ,
                title: Text('Home'),
                onTap: (){
                 print('home is clicked');
                },
                trailing:Icon(Icons.add,
                  color: Colors.grey[850],),
              ),
              ListTile(
                leading:Icon(Icons.settings,
                  color: Colors.grey[850],) ,
                title: Text('Setting'),
                onTap: (){
                  print('setting is clicked');
                },
                trailing:Icon(Icons.add,
                  color: Colors.grey[850],),
              ),
              ListTile(
                leading:Icon(Icons.question_answer,
                  color: Colors.grey[850],) ,
                title: Text('Q&A'),
                onTap: (){
                  print('Q&A is clicked');
                },
                trailing:Icon(Icons.add,
                  color: Colors.grey[850],),
              ),


            ],
          ),

        ),



      ),
    );
  }
}

