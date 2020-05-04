//import 'package:flutter/material.dart';
//import 'dart:async';
//import 'dart:io';
//import 'dart:typed_data';
//import 'package:flutter/services.dart' show rootBundle;
//import 'package:path_provider/path_provider.dart';
//
//void main() => runApp(new MyApp());
//
//class MyApp extends StatelessWidget {
//
//
//  @override
//  Widget build(BuildContext context) {
//
//    final filename = 'test.pdf';
//    var bytes = await rootBundle.load("assets/data/test.pdf");
//    String dir = (await getApplicationDocumentsDirectory()).path;
//    writeToFile(bytes,'$dir/$filename');
//    return new MaterialApp(
//      home: new Scaffold(
//        appBar: new AppBar(
//          title: const Text('Plugin example app'),
//        ),
//        body: new Center(
//
//        ),
//      ),
//    );
//  }
//}