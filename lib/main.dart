//import 'package:flutter/material.dart';
//
//void main() => runApp(MyApp());
//
//class MyApp extends StatelessWidget {
//  // This widget is the root of your application.
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: 'Flutter Demo',
//      theme: ThemeData(
//        // This is the theme of your application.
//        //
//        // Try running your application with "flutter run". You'll see the
//        // application has a blue toolbar. Then, without quitting the app, try
//        // changing the primarySwatch below to Colors.green and then invoke
//        // "hot reload" (press "r" in the console where you ran "flutter run",
//        // or simply save your changes to "hot reload" in a Flutter IDE).
//        // Notice that the counter didn't reset back to zero; the application
//        // is not restarted.
//        primarySwatch: Colors.blue,
//      ),
//      home: MyHomePage(title: 'Flutter Demo Home Page'),
//    );
//  }
//}
//
//class MyHomePage extends StatefulWidget {
//  MyHomePage({Key key, this.title}) : super(key: key);
//
//  // This widget is the home page of your application. It is stateful, meaning
//  // that it has a State object (defined below) that contains fields that affect
//  // how it looks.
//
//  // This class is the configuration for the state. It holds the values (in this
//  // case the title) provided by the parent (in this case the App widget) and
//  // used by the build method of the State. Fields in a Widget subclass are
//  // always marked "final".
//
//  final String title;
//
//  @override
//  _MyHomePageState createState() => _MyHomePageState();
//}
//
//class _MyHomePageState extends State<MyHomePage> {
//  int _counter = 0;
//
//  void _incrementCounter() {
//    setState(() {
//      // This call to setState tells the Flutter framework that something has
//      // changed in this State, which causes it to rerun the build method below
//      // so that the display can reflect the updated values. If we changed
//      // _counter without calling setState(), then the build method would not be
//      // called again, and so nothing would appear to happen.
//      _counter++;
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    // This method is rerun every time setState is called, for instance as done
//    // by the _incrementCounter method above.
//    //
//    // The Flutter framework has been optimized to make rerunning build methods
//    // fast, so that you can just rebuild anything that needs updating rather
//    // than having to individually change instances of widgets.
//    return Scaffold(
//      appBar: AppBar(
//        // Here we take the value from the MyHomePage object that was created by
//        // the App.build method, and use it to set our appbar title.
//        title: Text(widget.title),
//      ),
//      body: Center(
//        // Center is a layout widget. It takes a single child and positions it
//        // in the middle of the parent.
//        child: Column(
//          // Column is also a layout widget. It takes a list of children and
//          // arranges them vertically. By default, it sizes itself to fit its
//          // children horizontally, and tries to be as tall as its parent.
//          //
//          // Invoke "debug painting" (press "p" in the console, choose the
//          // "Toggle Debug Paint" action from the Flutter Inspector in Android
//          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
//          // to see the wireframe for each widget.
//          //
//          // Column has various properties to control how it sizes itself and
//          // how it positions its children. Here we use mainAxisAlignment to
//          // center the children vertically; the main axis here is the vertical
//          // axis because Columns are vertical (the cross axis would be
//          // horizontal).
//          mainAxisAlignment: MainAxisAlignment.center,
//          children: <Widget>[
//            Text(
//              'You have pushed the button this many times:',
//            ),
//            Text(
//              '$_counter',
//              style: Theme.of(context).textTheme.display1,
//            ),
//          ],
//        ),
//      ),
//      floatingActionButton: FloatingActionButton(
//        onPressed: _incrementCounter,
//        tooltip: 'Increment',
//        child: Icon(Icons.add),
//      ), // This trailing comma makes auto-formatting nicer for build methods.
//    );
//  }
//}

import 'package:bujishu1/home/customer/nav_drawer.dart';
import 'package:bujishu1/product_category/ligthing3.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CarouselWithIndicator(),
    );
  }
}

class CarouselWithIndicator extends StatefulWidget {
  @override
  _CarouselWithIndicatorState createState() => _CarouselWithIndicatorState();
}

class _CarouselWithIndicatorState extends State<CarouselWithIndicator> {
  List<String> _locations = ['All CAtegories (VVIP)']; // Option 2
  String _selectedLocation; // Option 2

  int _current = 0;
  List<String> imageList = [
    'assets/images/banner_best_seller_mobile.jpg',
    'assets/images/banner_dc_home_design_mobile.jpg',
    'assets/images/banner_top_rated_mobile.jpg'
  ];

  //Map<String, int> map = {imageList:_current};




  @override
  Widget build(BuildContext context) {

    double y = MediaQuery.of(context).size.height * 0.07;
    int z = y.toInt();

    return Scaffold(
      drawer: Container(
        width: 200,
        child: NavDrawer(),
      ),
      appBar: AppBar(
        iconTheme: new IconThemeData(color: Color(0xfffbcc34)),
        backgroundColor: Colors.black,
        actions: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 50),
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: <Widget>[
                Flexible(
                  flex:3,
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Image.asset('assets/images/bujishu_logo.png'),
                  ),
                ),
                Flexible(
                  flex:2,
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        height: 20,
                        child: Image.asset(
                          'assets/images/profile.png',
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: Image.asset(
                          'assets/images/heart.png',
                          fit: BoxFit.fitHeight,
                          height: 20,
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                          height: 20,
                          child: Image.asset(
                            'assets/images/cart.png',
                            fit: BoxFit.fitHeight,
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),

//          Container(
//            margin: EdgeInsets.only(right: 80),
//          ),
        ],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
//            Align(
//                alignment: Alignment.topLeft,
//                child: Container(
//                  margin: EdgeInsets.only(right: 120),
//                  child: Image.asset(
//                    'assets/images/bujishu_logo.png',
//                    fit: BoxFit.contain,
//                    height: 50,
//                  ),
//                ),
//
//            ),

//            Container(
//                padding: const EdgeInsets.all(8.0), child: Text('YourAppTitle'))

            /*Container(
              margin: EdgeInsets.only(right: 10),
              child: Image.asset(
                'assets/images/profile.png',
                fit: BoxFit.contain,
                height: 20,
              ),
            ),

            Container(
              margin: EdgeInsets.only(right: 10),
              child: Image.asset(
                'assets/images/heart.png',
                fit: BoxFit.contain,
                height: 20,
              ),
            ),

            Container(
              // margin: EdgeInsets.only(right: 10),
                child: Image.asset(
                  'assets/images/cart.png',
                  fit: BoxFit.contain,
                  height: 20,
                )), */

//            Container(
//                margin: EdgeInsets.only(right: 20),
//                width: 5,
//                child: PopupMenuButton<String>(
//                    onSelected: choiceAction,
//                    itemBuilder: (BuildContext context) {
//                      return Constants.choices.map((String choice) {
//                        return PopupMenuItem<String>(
//                          value: choice,
//                          child: Text(choice),
//                        );
//                      }).toList();
//                    }))
          ],
        ),
      ),
      body: Center(
        child: Container(
          color: Colors.black,
          child: Column(
            children: <Widget>[
//uncommend
              Flexible(
                  flex: 2,
                  child: Column(children: <Widget>[
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Container(
                      width: 335,
                      height: MediaQuery.of(context).size.height * 0.05,

                      //color: Colors.white,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white),
                      child: Row(
                        children: <Widget>[
                          Container(
                            width: 100,
                            child: DropdownButton(
                              hint: Text(
                                ' Categories',
                                style: TextStyle(fontSize: 10),
                              ),
                              value: _selectedLocation,
                              onChanged: (newValue) {
                                _selectedLocation = newValue;
                              },
                              items: _locations.map((location) {
                                return DropdownMenuItem(
                                  child: new Text(
                                    location,
                                    style: TextStyle(fontSize: 8),
                                  ),
                                  value: location,
                                );
                              }).toList(),
                            ),
                          ),
                          Container(
                            width: 2,
                            color: Color(0xfffbcc34),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 10),
                            width: 200,
                            child: TextField(),
                          ),
                          Container(
                            width: 2,
                            color: Color(0xfffbcc34),
                          ),
                          Container(
                            width: 30,
                            padding: EdgeInsets.fromLTRB(
                              8,
                              8,
                              8,
                              8,
                            ),
                            child: Image.asset(
                              'assets/images/search.png',
                              fit: BoxFit.fitWidth,
                            ),
                          )
                        ],
                      ),
                    ),

                  ])
              ),

//uncommend
//              Divider(
//                thickness: 2,
//                color: Color(0xffD4AF37),
//              ),

              Flexible(
                  flex: 5,
                  child: Column(children: <Widget>[

                    Container(
                      height: 2,
                      color: Color(0xffD4AF37),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),

                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        color: Colors.black,
                        width: double.infinity,
                        padding: EdgeInsets.only(left: 5, right: 5),
                        height: MediaQuery.of(context).size.height * 0.20,
//            padding: EdgeInsets.only(left: 50,right: 50),
                        child: Carousel(
                          boxFit: BoxFit.fitWidth,
                          images: [
                            AssetImage(
                                'assets/images/banner_best_seller_mobile.jpg'),
                            AssetImage(
                                'assets/images/banner_dc_home_design_mobile.jpg'),
                            AssetImage(
                                'assets/images/banner_top_rated_mobile.jpg'),
                          ],

                          animationCurve: Curves.fastOutSlowIn,
                          animationDuration: Duration(milliseconds: 2000),
                          //dotBgColor: Colors.purple.withOpacity(0.5),
                          indicatorBgPadding: 5.0,
                          //moveIndicatorFromBottom: -15,
                          dotSize: 4.0,
                          dotSpacing: 15.0,
                          dotColor: Color(0xfffbcc34),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    Container(
                      height: 2,
                      color: Color(0xffD4AF37),
                    ),
                  ])),

//uncommend
//              SizedBox(
//                height: 10,
//              ),

//              Positioned(
//                  top: 0.0,
//                  left: 0.0,
//                  right: 0.0,
//                  child: Row(
//                    mainAxisAlignment: MainAxisAlignment.center,
////                    children: map<Widget>(imageList, (index, url) {
////                      return Container(
////                        width: 8.0,
////                        height: 8.0,
////                        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
////                        decoration: BoxDecoration(
////                            shape: BoxShape.circle,
////                            color: _current == index ? Color.fromRGBO(0, 0, 0, 0.9) : Color.fromRGBO(0, 0, 0, 0.4)
////                        ),
////                      );
////                    }),
//                  )
//              ),
              /* Align(
                alignment: Alignment.center,
                child: Container(
                  width: 50,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          width: 5,
                          height: 5,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: 5,
                          height: 5,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: 5,
                          height: 5,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),*/

//uncommend
//              SizedBox(
//                height: 5,
//              ),

//uncommend
//              SizedBox(
//                height: 0,
//              ),

              Flexible(
                flex: 2,
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Container(

                    height: y,
                    margin: EdgeInsets.only(top: 5, bottom: 5, left: 20),
                    child:
                    Text(
                      'Popular Categories',
                      style: TextStyle(
                        color: Color(0xffD4AF37),
                        fontSize: y,
                        fontFamily: 'Tangerine',
                        //decoration: TextDecoration.underline,
                        decorationColor: Color(0xfffbcc34),

                      ),
                    ),
                  ),
                ),
              ),

              Flexible(
                fit: FlexFit.tight,
                flex: 7,
                child: Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.only(left: 15, right: 15),
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        height:MediaQuery.of(context).size.height * 0.12,
                                        //color: Colors.red,
                                        child: Image.asset(
                                            'assets/images/bed.png'),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 5),
                                        child: Text(
                                          'BEDSHEET',
                                          style: TextStyle(
                                            color: Color(0xfffbcc34),
                                            fontSize: 8,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Expanded(
                                    child: Column(children: <Widget>[
                                      Container(
                                        height:MediaQuery.of(context).size.height * 0.12,
                                        child: Image.asset(
                                            'assets/images/curtain.png'),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 5),
                                        child: Text(
                                          'CURTAIN',
                                          style: TextStyle(
                                              color: Color(0xfffbcc34),
                                              fontSize: 8),
                                          textAlign: TextAlign.center,
                                        ),
                                      )
                                    ])),
                                Expanded(
                                    child: Column(children: <Widget>[
                                      Container(
                                        height:MediaQuery.of(context).size.height * 0.12,
                                        child: Image.asset(
                                            'assets/images/ligthing.png'),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 5),
                                        child: InkWell(
                                          child: Text(
                                            'LIGHTING',
                                            style: TextStyle(
                                                color: Color(0xfffbcc34),
                                                fontSize: 8),
                                            textAlign: TextAlign.center,
                                          ),
                                          onTap: (){
                                            Navigator.push(context, MaterialPageRoute(builder: (context) => LightingP()));
                                          },
                                        ),
                                      )
                                    ])),
                              ],
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.02,
                            ),
                            Row(
                              children: <Widget>[
                                Expanded(
                                    child: Column(children: <Widget>[
                                      Container(
                                        height:MediaQuery.of(context).size.height * 0.12,
                                        child: Image.asset(
                                            'assets/images/mattress.png'),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 5),
                                        child: Text(
                                          'WALLPAPER',
                                          style: TextStyle(
                                              color: Color(0xfffbcc34),
                                              fontSize: 8),
                                          textAlign: TextAlign.center,
                                        ),
                                      )
                                    ])),
                                Expanded(
                                    child: Column(children: <Widget>[
                                      Container(
                                        height:MediaQuery.of(context).size.height * 0.12,
                                        child:
                                        Image.asset('assets/images/roll.png'),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 5),
                                        child: Text(
                                          'CARPET',
                                          style: TextStyle(
                                              color: Color(0xfffbcc34),
                                              fontSize: 8),
                                          textAlign: TextAlign.center,
                                        ),
                                      )
                                    ])),
                                Expanded(
                                    child: Column(children: <Widget>[
                                      Container(
                                        height:MediaQuery.of(context).size.height * 0.12,
                                        child:
                                        Image.asset('assets/images/paint.png'),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 5),
                                        child: Text(
                                          'PAINT',
                                          style: TextStyle(
                                              color: Color(0xfffbcc34),
                                              fontSize: 8),
                                          textAlign: TextAlign.center,
                                        ),
                                      )
                                    ])),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),

//uncommend
//              SizedBox(
//                height: 5,
//              ),

//uncommend
//              Divider(
//                thickness: 2,
//                color: Color(0xffD4AF37),
//              ),
              Flexible(
                flex: 1,
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 2,
                        color: Color(0xffD4AF37),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              'About Us',
                              style: TextStyle(
                                  color: Color(0xfffbcc34), fontSize: 5),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Expanded(
                            child: Text(
                              'Partnership',
                              style: TextStyle(
                                  color: Color(0xfffbcc34), fontSize: 5),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Expanded(
                            child: Text(
                              'Sign In',
                              style: TextStyle(
                                  color: Color(0xfffbcc34), fontSize: 5),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              'FAQ',
                              style: TextStyle(
                                  color: Color(0xfffbcc34), fontSize: 5),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Expanded(
                            child: Text(
                              'Privacy Policy',
                              style: TextStyle(
                                  color: Color(0xfffbcc34), fontSize: 5),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Expanded(
                            child: Text(
                              'View Cart',
                              style: TextStyle(
                                  color: Color(0xfffbcc34), fontSize: 5),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              'Warranty',
                              style: TextStyle(
                                  color: Color(0xfffbcc34), fontSize: 5),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Expanded(
                            child: Text(
                              'Contact Us',
                              style: TextStyle(
                                  color: Color(0xfffbcc34), fontSize: 5),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Expanded(
                            child: Text(
                              'My Wishlist',
                              style: TextStyle(
                                  color: Color(0xfffbcc34), fontSize: 5),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

//              Flexible(
//                fit: FlexFit.tight,
//                flex: 1,
//                child: Row(
//                  children: <Widget>[
//                    Expanded(
//                      child: Text(
//                        'About Us',
//                        style: TextStyle(color: Color(0xfffbcc34), fontSize: 5),
//                        textAlign: TextAlign.center,
//                      ),
//                    ),
//                    Expanded(
//                      child: Text(
//                        'Partnership',
//                        style: TextStyle(color: Color(0xfffbcc34), fontSize: 5),
//                        textAlign: TextAlign.center,
//                      ),
//                    ),
//                    Expanded(
//                      child: Text(
//                        'Sign In',
//                        style: TextStyle(color: Color(0xfffbcc34), fontSize: 5),
//                        textAlign: TextAlign.center,
//                      ),
//                    ),
//                  ],
//                ),
//              ),

//              Flexible(
//                fit: FlexFit.tight,
//                flex: 1,
//                child: Row(
//                  children: <Widget>[
//                    Expanded(
//                      child: Text(
//                        'FAQ',
//                        style: TextStyle(color: Color(0xfffbcc34), fontSize: 5),
//                        textAlign: TextAlign.center,
//                      ),
//                    ),
//                    Expanded(
//                      child: Text(
//                        'Privacy Policy',
//                        style: TextStyle(color: Color(0xfffbcc34), fontSize: 5),
//                        textAlign: TextAlign.center,
//                      ),
//                    ),
//                    Expanded(
//                      child: Text(
//                        'View Cart',
//                        style: TextStyle(color: Color(0xfffbcc34), fontSize: 5),
//                        textAlign: TextAlign.center,
//                      ),
//                    ),
//                  ],
//                ),
//              ),

//              Flexible(
//                fit: FlexFit.tight,
//                flex: 1,
//                child: Row(
//                  children: <Widget>[
//                    Expanded(
//                      child: Text(
//                        'Warranty',
//                        style: TextStyle(color: Color(0xfffbcc34), fontSize: 5),
//                        textAlign: TextAlign.center,
//                      ),
//                    ),
//                    Expanded(
//                      child: Text(
//                        'Contact Us',
//                        style: TextStyle(color: Color(0xfffbcc34), fontSize: 5),
//                        textAlign: TextAlign.center,
//                      ),
//                    ),
//                    Expanded(
//                      child: Text(
//                        'My Wishlist',
//                        style: TextStyle(color: Color(0xfffbcc34), fontSize: 5),
//                        textAlign: TextAlign.center,
//                      ),
//                    ),
//                  ],
//                ),
//              ),
            ],
          ),
        ),
      ),
    );
  }

  void choiceAction(String choice) {
    if (choice == Constants.profile) {
      print('profile');
    } else if (choice == Constants.order) {
      print('order');
    } else if (choice == Constants.cart) {
      print('cart');
    } else if (choice == Constants.SignOut) {
      print('SignOut');
    }
  }
}

class Constants {
  static const String profile = 'Profile(vvip)';
  static const String order = 'My Orders(vvip)';
  static const String cart = 'My Cart(vvip)';

//  static const String Settings = 'Settings';
  static const String SignOut = 'Sign out';

  static const List<String> choices = <String>[
    profile,
    order,
    cart,
    SignOut,
  ];
}
