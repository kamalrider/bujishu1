import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

void main() => runApp(DotIndicator());
class DotIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image Corousel',
      home: Homepage(),

    );
  }
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ImageCarousel(),
    );
  }
}

class ImageCarousel extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Carousel(
      boxFit: BoxFit.cover,
      images: [
        AssetImage('assets/images/banner_best_seller_mobile.jpg'),
        AssetImage('assets/images/banner_dc_home_design_mobile.jpg'),
        AssetImage('assets/images/banner_top_rated_mobile.jpg'),
      ],

      animationCurve: Curves.fastOutSlowIn,
      animationDuration: Duration(milliseconds: 2000),
      dotBgColor: Colors.purple.withOpacity(0.5),
      dotColor: Colors.lightGreenAccent,
    );
  }

}
