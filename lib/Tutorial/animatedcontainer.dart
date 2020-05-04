import 'package:flutter/material.dart';

void main() => runApp(AnimatedContainerDemo());

class AnimatedContainerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AnimatedContainerHome(),
    );
  }
}

class AnimatedContainerHome extends StatefulWidget {
  @override
  _AnimatedContainerWithState createState() => _AnimatedContainerWithState();
}

class _AnimatedContainerWithState extends State<AnimatedContainerHome> {



  var _color = Colors.red;
  var _height = 100.0;
  var _width = 100.0;



  @override
  Widget build(BuildContext context) {

    animateContain() {}

    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Demo'),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            AnimatedContainer(
              duration: Duration(seconds: 1),
              curve: Curves.bounceIn,
              color: _color,
              height: _height,
              width: _width,
            ),
            OutlineButton(
              child: Text('Animated Container'),
              onPressed: () {
                setState(() {
                  _color = _color == Colors.red ? Colors.green : Colors.red;
                  _height = _height == 100 ? 200 : 100;
                  _width = _width == 100 ? 200 : 100;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
