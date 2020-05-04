//import 'package:carousel_slider/carousel_slider.dart';
//import 'package:flutter/material.dart';
//
//
//void main() => runApp(DotIndicator());
//class DotIndicator extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: 'Image Corousel',
//      home: Homepage(),
//
//    );
//  }
//}
//
//class Homepage extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      body: CarouselWithIndicator(),
//    );
//  }
//}
//
//class CarouselWithIndicator extends StatefulWidget {
//  @override
//  _CarouselWithIndicatorState createState() => _CarouselWithIndicatorState();
//}
//
//class  _CarouselWithIndicatorState extends StatelessWidget{
//
//  int _current = 0;
//
//
//  @override
//  Widget build(BuildContext context) {
//    return Stack(
//        children: [
//          CarouselSlider(
//            items: child,
//            autoPlay: true,
//            aspectRatio: 2.0,
//            onPageChanged: (index) {
//              setState(() {
//                _current = index;
//              });
//            },
//          ),
//          Positioned(
//              top: 0.0,
//              left: 0.0,
//              right: 0.0,
//              child: Row(
//                mainAxisAlignment: MainAxisAlignment.center,
//                children: map<Widget>(imgList, (index, url) {
//                  return Container(
//                    width: 8.0,
//                    height: 8.0,
//                    margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
//                    decoration: BoxDecoration(
//                        shape: BoxShape.circle,
//                        color: _current == index ? Color.fromRGBO(0, 0, 0, 0.9) : Color.fromRGBO(0, 0, 0, 0.4)
//                    ),
//                  );
//                }),
//              )
//          )
//        ]
//    );
////      Carousel(
////      boxFit: BoxFit.cover,
////      images: [
////        AssetImage('assets/images/banner_best_seller_mobile.jpg'),
////        AssetImage('assets/images/banner_dc_home_design_mobile.jpg'),
////        AssetImage('assets/images/banner_top_rated_mobile.jpg'),
////      ],
////
////      animationCurve: Curves.fastOutSlowIn,
////      animationDuration: Duration(milliseconds: 2000),
////    );
//  }
//
//}
