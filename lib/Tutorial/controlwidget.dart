import 'package:flutter/material.dart';

void main() => runApp(WidgetSwitchDemo());

enum WidgetMarker { graph, stats, info }

class WidgetSwitchDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("WidgetSwitchDemo"),
        ),
        body: BodyWidget(),
      ),
    );
  }
}

class BodyWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => BodyWidgetState();
}

class BodyWidgetState extends State<BodyWidget> {


  WidgetMarker selectedWidgetMarker = WidgetMarker.graph;


  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            FlatButton(
              onPressed: () {
                setState(() {
                  selectedWidgetMarker = WidgetMarker.graph;
                });
              },
              child: Text("Graph", style: TextStyle(color: Colors.black12),),
            ),
            FlatButton(
              onPressed: () {
                setState(() {
                  selectedWidgetMarker = WidgetMarker.stats;
                });
              },
              child: Text("Stats", style: TextStyle(color: Colors.black12),),
            ),
            FlatButton(
              onPressed: () {
                setState(() {
                  selectedWidgetMarker = WidgetMarker.info;
                });
              },
              child: Text("Info", style: TextStyle(color: Colors.black12),),
            ),
          ],
        ),
        Container(
          height: 200,
          color: Colors.red,
          child: getCustomContainer(),

        )
      ],
    );
  }

  Widget getCustomContainer() {
    switch (selectedWidgetMarker) {
      case WidgetMarker.graph:
        return getGraphWidget();
      case WidgetMarker.stats:
        return getStatsWidget();
      case WidgetMarker.info:
        return getInfoWidget();
    }

    return getGraphWidget();
  }

  Widget getGraphWidget() {
    return Container(
      height: 200,
      color: Colors.red,
    );
  }

  Widget getStatsWidget() {
    return Container(
      height: 300,
      width: double.infinity,
      child: Text('hello'),
    );
  }

  Widget getInfoWidget() {
    return Container(
      height: 500,
      color: Colors.blue,
    );
  }
}

