import 'package:bujishu1/home/customer/nav_drawer.dart';
import 'package:carousel_slider/carousel_slider.dart';
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
    return Scaffold(
      drawer: Container(
        width: 200,
        child: NavDrawer(),
      ),
      appBar: AppBar(
        iconTheme: new IconThemeData(color: Color(0xfffbcc34)),
        backgroundColor: Colors.black,
        actions: <Widget>[
          Image.asset('assets/images/bujishu_logo.png'),
          Container(margin: EdgeInsets.only(right: 120),),
          Container(
            margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
            height: 15,
            child: Image.asset(
              'assets/images/profile.png',
              fit: BoxFit.fitHeight,
            ),
          ),

          Container(
            margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
            child: Image.asset(
              'assets/images/heart.png',
              fit: BoxFit.fitHeight,
              height: 15,
            ),
          ),

          Container(
              margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
              height: 15,
              child: Image.asset(
                'assets/images/cart.png',
                fit: BoxFit.fitHeight,
              )),
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
              SizedBox(
                height: 10,
              ),
              Container(
                width: 335,
                height: 30,

                //color: Colors.white,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white),
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 105,
                      child: DropdownButton(
                        hint: Text(
                          ' All Categories (VVIP)',
                          style: TextStyle(fontSize: 8),
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
                      width: 178,
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
                        fit: BoxFit.fitHeight,
                      ),
                    )
                  ],
                ),
              ),
              Divider(
                thickness: 2,
                color: Color(0xffD4AF37),
              ),
              Container(
                width: double.infinity,
                height: 150,
//            padding: EdgeInsets.only(left: 50,right: 50),
                child: CarouselSlider(
                  //height: 500.0,
                  items: imageList.map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery
                              .of(context)
                              .size
                              .width,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
//                      decoration: BoxDecoration(
//                          color: Colors.amber
//                      ),
                          child: Image.asset(
                            i,
                          ),
                        );
                      },
                    );
                  }).toList(),

                  onPageChanged: (index) {
                    setState((){
                      _current = index;
                    });

                  },

                 // onPageChangedCallback:,

                  viewportFraction: 1.0,
                  aspectRatio: MediaQuery
                      .of(context)
                      .size
                      .aspectRatio,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 5),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  pauseAutoPlayOnTouch: Duration(seconds: 10),
                  enlargeCenterPage: true,
                  //onPageChanged: callbackFunction,
                  scrollDirection: Axis.horizontal,
                ),
              ),

              SizedBox(
                height: 10,
              ),

              Positioned(
                  top: 0.0,
                  left: 0.0,
                  right: 0.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
//                    children: map<Widget>(imageList, (index, url) {
//                      return Container(
//                        width: 8.0,
//                        height: 8.0,
//                        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
//                        decoration: BoxDecoration(
//                            shape: BoxShape.circle,
//                            color: _current == index ? Color.fromRGBO(0, 0, 0, 0.9) : Color.fromRGBO(0, 0, 0, 0.4)
//                        ),
//                      );
//                    }),
                  )
              ),
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
              SizedBox(
                height: 5,
              ),

              Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    margin: EdgeInsets.only(top: 5, bottom: 10, left: 20),
                    child: Text(
                      'Popular Categories',
                      style: TextStyle(
                        color: Color(0xffD4AF37),
                        fontSize: 40,
                        fontFamily: 'Tangerine',
                        //decoration: TextDecoration.underline,
                        decorationColor: Color(0xfffbcc34),
                      ),
                    ),
                  ),
              ),

              SizedBox(
                height: 0,
              ),
              Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Column(
                            children: <Widget>[
                              Container(
                                height: 70,
                                //color: Colors.red,
                                child: Image.asset('assets/images/bed.png'),
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
                                height: 70,
                                child: Image.asset('assets/images/curtain.png'),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 5),
                                child: Text(
                                  'CURTAIN',
                                  style: TextStyle(
                                      color: Color(0xfffbcc34), fontSize: 8),
                                  textAlign: TextAlign.center,
                                ),
                              )
                            ])),
                        Expanded(
                            child: Column(children: <Widget>[
                              Container(
                                height: 70,
                                child: Image.asset(
                                    'assets/images/cupboard.png'),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 5),
                                child: Text(
                                  'CABINET',
                                  style: TextStyle(
                                      color: Color(0xfffbcc34), fontSize: 8),
                                  textAlign: TextAlign.center,
                                ),
                              )
                            ])),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                            child: Column(children: <Widget>[
                              Container(
                                height: 70,
                                child: Image.asset(
                                    'assets/images/mattress.png'),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 5),
                                child: Text(
                                  'WALLPAPER',
                                  style: TextStyle(
                                      color: Color(0xfffbcc34), fontSize: 8),
                                  textAlign: TextAlign.center,
                                ),
                              )
                            ])),
                        Expanded(
                            child: Column(children: <Widget>[
                              Container(
                                height: 70,
                                child: Image.asset('assets/images/roll.png'),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 5),
                                child: Text(
                                  'CARPET',
                                  style: TextStyle(
                                      color: Color(0xfffbcc34), fontSize: 8),
                                  textAlign: TextAlign.center,
                                ),
                              )
                            ])),
                        Expanded(
                            child: Column(children: <Widget>[
                              Container(
                                height: 70,
                                child: Image.asset('assets/images/paint.png'),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 5),
                                child: Text(
                                  'PAINT',
                                  style: TextStyle(
                                      color: Color(0xfffbcc34), fontSize: 8),
                                  textAlign: TextAlign.center,
                                ),
                              )
                            ])),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Divider(
                thickness: 2,
                color: Color(0xffD4AF37),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      'About Us',
                      style: TextStyle(color: Color(0xfffbcc34), fontSize: 5),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'Partnership',
                      style: TextStyle(color: Color(0xfffbcc34), fontSize: 5),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'Sign In',
                      style: TextStyle(color: Color(0xfffbcc34), fontSize: 5),
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
                      style: TextStyle(color: Color(0xfffbcc34), fontSize: 5),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'Privacy Policy',
                      style: TextStyle(color: Color(0xfffbcc34), fontSize: 5),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'View Cart',
                      style: TextStyle(color: Color(0xfffbcc34), fontSize: 5),
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
                      style: TextStyle(color: Color(0xfffbcc34), fontSize: 5),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'Contact Us',
                      style: TextStyle(color: Color(0xfffbcc34), fontSize: 5),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'My Wishlist',
                      style: TextStyle(color: Color(0xfffbcc34), fontSize: 5),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
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
