//import 'package:bujishu1/Tutorial/nav_drawer.dart';
//import 'package:flutter/cupertino.dart';
//import 'package:flutter/material.dart';
//
//void main() => runApp(Lighting());
//
//enum WidgetMarker { inn, out }
//
//class Lighting extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: 'Flutter Demo',
//      theme: ThemeData(
//        primarySwatch: Colors.blue,
//      ),
//      home: LightingState(),
//    );
//  }
//}
//
//class LightingState extends StatefulWidget {
//  @override
//  _LightingStates createState() => _LightingStates();
//}
//
//class DataModel {
//  String title;
//  String image;
//  String description;
//  bool expended;
//
//  DataModel({this.title, this.image, this.description, this.expended = false});
//}
//
//class _LightingStates extends State<LightingState> {
//  List<String> _locations = ['All CAtegories (VVIP)']; // Option 2
//  String _selectedLocation; // Option 2
//
//  int _current = 0;
//  List<String> imageList = [
//    'assets/images/banner_best_seller_mobile.jpg',
//    'assets/images/banner_dc_home_design_mobile.jpg',
//    'assets/images/banner_top_rated_mobile.jpg'
//  ];
//
//  List<DataModel> _dataModel = [
//    DataModel(
//      title: 'LED',
//      description: 'Eyeball\nDownlight',
//      image: 'assets/images/eyeball.png',
//    ),
//    DataModel(
//      title: 'LED',
//      description: 'Eyeball\nDownlight',
//      image: 'assets/images/officelamp.jpg',
//    ),
//    DataModel(
//      title: 'LED',
//      description: 'Eyeball\nDownlight',
//      image: 'assets/images/eyeball.png',
//    ),
//    DataModel(
//      title: 'LED',
//      description: 'Eyeball\nDownlight',
//      image: 'assets/images/officelamp.jpg',
//    ),
//    DataModel(
//      title: 'LED',
//      description: 'Eyeball\nDownlight',
//      image: 'assets/images/eyeball.png',
//    ),
//    DataModel(
//      title: 'LED',
//      description: 'Eyeball\nDownlight',
//      image: 'assets/images/officelamp.jpg',
//    ),
//  ];
//
//  WidgetMarker selectedWidgetMarker = WidgetMarker.inn;
//
//  double containerHeight;
//
//  @override
//  Widget build(BuildContext context) {
//
//    return Scaffold(
//      drawer: Container(
//        width: 200,
//        child: NavDrawer(),
//      ),
//      appBar: AppBar(
//        iconTheme: new IconThemeData(color: Color(0xfffbcc34)),
//        backgroundColor: Colors.black,
//        actions: <Widget>[
//          Container(
//            padding: EdgeInsets.only(left: 50),
//            width: MediaQuery.of(context).size.width,
//            child: Row(
//              children: <Widget>[
//                Flexible(
//                  flex: 3,
//                  child: Align(
//                    alignment: Alignment.topLeft,
//                    child: Image.asset('assets/images/logo.png'),
//                  ),
//                ),
//                Flexible(
//                  flex: 2,
//                  child: Row(
//                    children: <Widget>[
//                      Container(
//                        margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
//                        height: 20,
//                        child: Image.asset(
//                          'assets/images/profile.png',
//                          fit: BoxFit.fitHeight,
//                        ),
//                      ),
//                      Container(
//                        margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
//                        child: Image.asset(
//                          'assets/images/heart.png',
//                          fit: BoxFit.fitHeight,
//                          height: 20,
//                        ),
//                      ),
//                      Container(
//                          margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
//                          height: 20,
//                          child: Image.asset(
//                            'assets/images/cart.png',
//                            fit: BoxFit.fitHeight,
//                          )),
//                    ],
//                  ),
//                ),
//              ],
//            ),
//          ),
//        ],
//        title: Row(
//          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//          children: [],
//        ),
//      ),
//      body: ListView(
//
//      children: <Widget>[
//          Container(
//            color: Colors.grey,
//          ),
//
//          SliverList(
//            delegate: SliverChildListDelegate([
//
//              Align(
//                alignment: Alignment.centerLeft,
//                child: Column(
//                  children: <Widget>[
//                    Container(
//                      //padding: EdgeInsets.only(left: 20),
//                      child: Text(
//                        'Lighting',
//                        textAlign: TextAlign.left,
//                        style: TextStyle(
//                          fontSize: 30,
//                          color: Colors.grey,
//                        ),
//                      ),
//                    ),
//                    SizedBox(
//                      height: 10,
//                    ),
//                    Container(
//                      //padding: EdgeInsets.only(left: 20),
//                      child: Text(
//                        'Featured Categories',
//                        style: TextStyle(
//                          fontSize: 25,
//                          color: Colors.black,
//                        ),
//                      ),
//                    ),
//                  ],
//                ),
//              ),
//            ]),
//          ),
//          SliverGrid(
//            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                crossAxisCount: 2),
//            delegate: SliverChildListDelegate(_dataModel.map((data) {
//              return Padding(
//                padding: const EdgeInsets.all(8.0),
//                child: GestureDetector(
//                  child: getImages(data),
//                  onTap: () {
//                    setState(() {
//                      _dataModel.forEach((f) => f.expended = false);
//
//                      data.expended = !data.expended;
//                    });
//                  },
//                ),
//              );
//            }).toList()
//
//            ),
//          ),
//        ],
//      ),
//
//      )
//    );
//  }
//
//  Widget getImages(DataModel item) {
//    containerHeight = item.expended ? 60 : 0;
//
//    return Container(
//      child: Column(
//        children: <Widget>[
//          Expanded(
//            child: FittedBox(
//              child: Image.asset(item.image),
//              fit: BoxFit.cover,
//            ),
//          ),
//          Padding(
//            padding: EdgeInsets.all(4),
//            child: Text(item.title),
//          ),
//          AnimatedContainer(
//            height: containerHeight,
//            duration: Duration(seconds: 1),
//            curve: Curves.fastOutSlowIn,
//            child: Column(
//              children: <Widget>[
//                Padding(
//                  padding: const EdgeInsets.symmetric(horizontal: 50),
//                  child: Divider(
//                    height: 6,
//                    color: Colors.grey,
//                  ),
//                ),
//                Text(
//                  item.description,
//                  textAlign: TextAlign.center,
//                  style: TextStyle(fontSize: 12),
//                ),
//              ],
//            ),
//          )
//        ],
//      ),
//    );
//  }
//}
