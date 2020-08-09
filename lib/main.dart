import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       primaryColor: Colors.black,
      ),
      home: MyHomePage(),
    );
  }
}
//겉 껍데기
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
// 속
class _MyHomePageState extends State<MyHomePage> {
  var _index=0;
  var _pages=[
    Page1(),
    Page2(),
    Page3(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('복잡한 UI'),
          centerTitle:true,
        actions: <Widget>[
          IconButton(
            icon:Icon(
              Icons.more_vert,
              color:Colors.black,
            ),
            onPressed:() {},
          ),
        ],
      ),
      body: _pages[_index],

      bottomNavigationBar: BottomNavigationBar(
        onTap:(index){
          setState((){
            _index=index;
          });
        },
        currentIndex: _index,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            title : Text('홈'),
            icon : Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            title: Text('이용서비스'),
            icon: Icon(Icons.assignment),
          ),
          BottomNavigationBarItem(
            title: Text('내 정보'),
            icon: Icon(Icons.account_circle),
          ),
        ],
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _buildTop(),
        _buildMiddle(),
        _buildBottom(),
      ],
    );
  }

  Widget _buildTop() {
    return Padding(
      padding: const EdgeInsets.only(top:20, bottom:20),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              GestureDetector(
                onTap: (){
                  print('첫번째 행의 첫번째 아이콘 클릭!');
                },
                child: Column(
                  children: <Widget>[
                    Icon(
                      Icons.local_taxi,
                      size:40,
                    ),
                    Text('기본 택시'),
                  ],
                ),
              ),
              InkWell(
                onTap: (){
                  print('첫번째 행의 두번째 아이콘 클릭!');
                },
                child: Column(
                  children: <Widget>[
                    Icon(
                      Icons.local_taxi,
                      size:40,
                    ),
                    Text('전기 택시'),
                  ],
                ),
              ),
              Column(
                children: <Widget>[
                  Icon(
                    Icons.local_taxi,
                    size:40,
                  ),
                  Text('시외 택시'),
                ],
              ),
              Column(
                children: <Widget>[
                  Icon(
                    Icons.local_taxi,
                    size:40,
                  ),
                  Text('모범 택시'),
                ],
              ),
            ],
          ),
          SizedBox(height:20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Icon(
                    Icons.local_taxi,
                    size:40,
                  ),
                  Text('기본 택시'),
                ],
              ),
              Column(
                children: <Widget>[
                  Icon(
                    Icons.local_taxi,
                    size:40,
                  ),
                  Text('전기 택시'),
                ],
              ),
              Column(
                children: <Widget>[
                  Icon(
                    Icons.local_taxi,
                    size:40,
                  ),
                  Text('시외 택시'),
                ],
              ),
              Column(
                children: <Widget>[
                  Icon(
                    Icons.local_taxi,
                    size:40,
                  ),
                  Text('모범 택시'),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildMiddle() {
    return Text('Middle');
  }

  Widget _buildBottom() {
    return Text('Bottom');
  }
}
class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child:Text(
        '이용서비스',
        style:TextStyle(fontSize:40),
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child:Text(
        '내 정보',
        style:TextStyle(fontSize:40),
      ),
    );
  }
}

