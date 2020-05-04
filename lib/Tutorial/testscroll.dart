import 'package:bujishu1/Tutorial/nav_drawer.dart';
import 'package:flutter/material.dart';

void main() => runApp(Lighting());

enum WidgetMarker { inn, out }

class Lighting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LightingState(),
    );
  }
}

class LightingState extends StatefulWidget {
  @override
  _LightingStates createState() => _LightingStates();
}

class _LightingStates extends State<LightingState>{

  Widget HeaderWidget(String string){
    return Text(string);
  }

  Widget BodyWidget(Color color){
    return Container(
      color: color,
    );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView"),
      ),
      body: Container(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Text("Header 1"),
                  HeaderWidget("Header 2"),
                  HeaderWidget("Header 3"),
                  HeaderWidget("Header 4"),
                ],
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  BodyWidget(Colors.blue),
                  BodyWidget(Colors.red),
                  BodyWidget(Colors.green),
                  BodyWidget(Colors.orange),
                  BodyWidget(Colors.blue),
                  BodyWidget(Colors.red),
                ],
              ),
            ),
            SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              delegate: SliverChildListDelegate(
                [
                  BodyWidget(Colors.blue),
                  BodyWidget(Colors.green),
                  BodyWidget(Colors.yellow),
                  BodyWidget(Colors.orange),
                  BodyWidget(Colors.blue),
                  BodyWidget(Colors.red),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}