import 'package:bujishu1/product_category/lighting.dart';
import 'package:flutter/material.dart';

void main() => runApp(GetData());

class GetData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: GetDataState(),
    );
  }
}

class GetDataState extends StatefulWidget {
  @override
  _GetDataStates createState() => _GetDataStates();
}

class _GetDataStates extends State<GetDataState>{
  @override
  Widget build(BuildContext context) {



//    return Scaffold(
//      body: Padding(
//        padding: EdgeInsets.all(16.0),
//        child: Text(todo.description),
//      ),
//    );
  }

}