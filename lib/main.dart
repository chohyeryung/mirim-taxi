import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

final dummyItems=[
  'https://post-phinf.pstatic.net/MjAyMDA1MjdfMjM3/MDAxNTkwNTYxNzI1MTYy.CkJ0ERBE85NvzYqZbPf0DHbZ83BMbiooYOD5Q5Q8XVsg.pPKOEkFtIZkLZO-nylUjjdfgWDVOFdBV6GaV7qK5cFMg.JPEG/%ED%83%9D%EC%8B%9C%ED%88%AC%EC%96%B42.jpg?type=w1200',
  'https://blogfiles.pstatic.net/MjAyMDA1MjBfMzAw/MDAxNTg5OTM3NzkwNDM4.0oPJmVHybrpopP_uB0bqvFW4cWV9spX8s2RZ6nQ0cswg.V4G9-b3ZA72wwUZs5VSeslo7AZHiblcNMs18GABoK7gg.JPEG.myrealtrip/2.jpg?type=w1',
  'https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAxODAyMTFfMjE0%2FMDAxNTE4MzI5MzAxODE1.C48ciDbtu71TPhf5njF5G1bUTmPSaRGKO7lYI1WJZM4g.UOmsBuyCTa606Farc74bUxa3eTWmtzejgjma2U6zVn0g.JPEG.phsphs82%2F%25C0%25CE%25C3%25B5%25B0%25F8%25C7%25D7%25C5%25C3%25BD%25C3%25BA%25A3%25BD%25BA%25C6%25AE%25C5%25C3%25BD%25C3_%25282%2529.jpg&type=b400',
];

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
    return ListView(
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
    return CarouselSlider(
      options: CarouselOptions(
        height:200,
        autoPlay:true,
      ),
      items: dummyItems.map((url) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                child: ClipRRect(
                  borderRadius:BorderRadius.circular(8.0),
                  child:Image.network(
                    url,
                    fit:BoxFit.cover,
                  )
                ),
            );
          },
        );
      }).toList(),
    );
  }

  Widget _buildBottom() {

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

