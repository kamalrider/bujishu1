import 'package:flutter/material.dart';
//import 'package:flutter_rating_bar/flutter_rating_bar';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

void main() => runApp(Ribbon());

class Ribbon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RibbonHome(),
    );
  }
}

class RibbonHome extends StatefulWidget {
  @override
  _RibbonState createState() => _RibbonState();
}

class _RibbonState extends State<RibbonHome> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[

            SizedBox(
              height: 40,
            ),

            Container(
              margin: const EdgeInsets.all(10.0),
              color: Colors.yellow,
              height: 100,
              child: Banner(
                message: "hello",
                location: BannerLocation.topEnd,
                color: Colors.red,
                child: Center(
                  child: Text("Hello, banner!"),
                ),
              ),
            ),
            FlutterRatingBarIndicator(
              rating: 2.5,
              itemCount: 5,
              itemSize: 50.0,
              emptyColor: Colors.amber.withAlpha(50),
            ),
          ],
        ),
      ),
    );
  }
}
