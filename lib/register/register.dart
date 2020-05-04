import 'dart:typed_data';

import 'package:flutter/material.dart';

import 'agreement.dart';
import 'package:flutter_signature_pad/flutter_signature_pad.dart';

void main() => runApp(RegisterApp());

class RegisterApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final Registration = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(0.0),
      color: Colors.white,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(15.0, 10, 15.0, 10.0),
        onPressed: () {

        },
        child: Text("Login",
            textAlign: TextAlign.center),
      ),
    );

    final information = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(0.0),
      color: Colors.white,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(15.0, 10, 15.0, 10.0),
        onPressed: () {

        },
        child: Text("Login",
            textAlign: TextAlign.center),
      ),
    );

    final agreement = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(0.0),
      color: Colors.white,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(15.0, 10, 15.0, 10.0),
        onPressed: () {

        },
        child: Text("Login",
            textAlign: TextAlign.center),
      ),
    );

    Future navigateToLoginPage(context) async {
      Navigator.push(

          context, MaterialPageRoute(builder: (context) => LoginApp()));
    }

    ByteData _img = ByteData(0);
    var color = Colors.red;
    var strokeWidth = 5.0;
    final _sign = GlobalKey<SignatureState>();

    return MaterialApp(
        home: Scaffold(
            body: Center(
      child: Container(
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage("assets/images/bujishu_main_page.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 50),
                  child: SizedBox(
                    height: 150.0,
                    width: 150.0,
                    child: Image.asset(
                      "assets/images/logo.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  height: 3000,
                  width: 400,
                  color: Color(0xfffbcc34),
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 46,
                        color: Colors.black,
                        margin: EdgeInsets.all(2),
                        padding: EdgeInsets.fromLTRB(120.0, 12.0, 120.0, 12.0),
                        child: Text(
                          'Registration',
                          textAlign: TextAlign.center,
                          style: new TextStyle(
                              fontSize: 15, color: Color(0xfffbcc34)),
                        ),
                      ),

//                      Row(
//                        children: <Widget>[
//                          Registration,
//                          information,
//                          agreement,
//                        ],
//                      ),

                      Container(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                          child: Container(
                            child: Column(
                              children: <Widget>[
                                Container(
                                  width: 300,
                                  height: 20,
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                    child: Text('Email'),
                                  ),
                                ),
                                Container(
                                    color: Colors.white,
                                    width: 300,
                                    height: 40,
                                    child: Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(10, 0, 10, 0),
                                      child: TextField(
                                        decoration: InputDecoration(
                                          hintText: 'email',
                                        ),
                                      ),
                                    )),
                                Container(
                                  margin: EdgeInsets.only(top: 10),
                                  width: 300,
                                  height: 20,
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                    child: Text('Password'),
                                  ),
                                ),
                                Container(
                                    color: Colors.white,
                                    width: 300,
                                    height: 40,
                                    child: Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(10, 0, 10, 0),
                                      child: TextField(
                                        decoration: InputDecoration(
                                          hintText: 'password',
                                        ),
                                      ),
                                    )),
                                Container(
                                  margin: EdgeInsets.only(top: 10),
                                  width: 300,
                                  height: 20,
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                    child: Text('Confirm Password'),
                                  ),
                                ),
                                Container(
                                    color: Colors.white,
                                    width: 300,
                                    height: 40,
                                    child: Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(10, 0, 10, 0),
                                      child: TextField(
                                        decoration: InputDecoration(
                                          hintText: 'confirm password',
                                        ),
                                      ),
                                    )),
                                Container(
                                  margin: EdgeInsets.only(top: 10),
                                  width: 300,
                                  height: 20,
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                    child: Text('Full Name'),
                                  ),
                                ),
                                Container(
                                    color: Colors.white,
                                    width: 300,
                                    height: 40,
                                    child: Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(10, 0, 10, 0),
                                      child: TextField(
                                        decoration: InputDecoration(
                                          hintText: 'full name',
                                        ),
                                      ),
                                    )),
                                Container(
                                  margin: EdgeInsets.only(top: 10),
                                  width: 300,
                                  height: 20,
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                    child: Text('NRIC Number'),
                                  ),
                                ),
                                Container(
                                    color: Colors.white,
                                    width: 300,
                                    height: 40,
                                    child: Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(10, 0, 10, 0),
                                      child: TextField(
                                        decoration: InputDecoration(
                                          hintText: 'nric number',
                                        ),
                                      ),
                                    )),
                                Container(
                                  margin: EdgeInsets.only(top: 10),
                                  width: 300,
                                  height: 20,
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                    child: Text('Address Line 1'),
                                  ),
                                ),
                                Container(
                                    color: Colors.white,
                                    width: 300,
                                    height: 40,
                                    child: Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(10, 0, 10, 0),
                                      child: TextField(
                                        decoration: InputDecoration(
                                          hintText:
                                              'Residential Address Line 1',
                                        ),
                                      ),
                                    )),
                                Container(
                                  margin: EdgeInsets.only(top: 10),
                                  width: 300,
                                  height: 20,
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                    child: Text('Address Line 2'),
                                  ),
                                ),
                                Container(
                                    color: Colors.white,
                                    width: 300,
                                    height: 40,
                                    child: Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(10, 0, 10, 0),
                                      child: TextField(
                                        decoration: InputDecoration(
                                          hintText:
                                              'Residential Address Line 2',
                                        ),
                                      ),
                                    )),
                                Container(
                                  margin: EdgeInsets.only(top: 10),
                                  width: 300,
                                  height: 20,
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                    child: Text('Address Line 3'),
                                  ),
                                ),
                                Container(
                                    color: Colors.white,
                                    width: 300,
                                    height: 40,
                                    child: Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(10, 0, 10, 0),
                                      child: TextField(
                                        decoration: InputDecoration(
                                          hintText:
                                              'Residential Address Line 3',
                                        ),
                                      ),
                                    )),
                                Container(
                                  margin: EdgeInsets.only(top: 10),
                                  width: 300,
                                  height: 20,
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                    child: Text('Postcode'),
                                  ),
                                ),
                                Container(
                                    color: Colors.white,
                                    width: 300,
                                    height: 40,
                                    child: Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(10, 0, 10, 0),
                                      child: TextField(
                                        decoration: InputDecoration(
                                          hintText: 'postcode',
                                        ),
                                      ),
                                    )),
                                Container(
                                  margin: EdgeInsets.only(top: 10),
                                  width: 300,
                                  height: 20,
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                    child: Text('City'),
                                  ),
                                ),
                                Container(
                                    color: Colors.white,
                                    width: 300,
                                    height: 40,
                                    child: Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(10, 0, 10, 0),
                                      child: TextField(
                                        decoration: InputDecoration(
                                          hintText: 'city',
                                        ),
                                      ),
                                    )),
                                Container(
                                  margin: EdgeInsets.only(top: 10),
                                  width: 300,
                                  height: 20,
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                    child: Text('State'),
                                  ),
                                ),
                                Container(
                                    color: Colors.white,
                                    width: 300,
                                    height: 40,
                                    child: Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(10, 0, 10, 0),
                                      child: TextField(
                                        decoration: InputDecoration(
                                          hintText: 'state',
                                        ),
                                      ),
                                    )),
                                Container(
                                  margin: EdgeInsets.only(top: 10),
                                  width: 300,
                                  height: 20,
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                    child: Text('Contact Number (Home)'),
                                  ),
                                ),
                                Container(
                                    color: Colors.white,
                                    width: 300,
                                    height: 40,
                                    child: Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(10, 0, 10, 0),
                                      child: TextField(
                                        decoration: InputDecoration(
                                          hintText: 'Contact Number (Home)',
                                        ),
                                      ),
                                    )),
                                Container(
                                  margin: EdgeInsets.only(top: 10),
                                  width: 300,
                                  height: 20,
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                    child: Text('Contact Number (mobile)'),
                                  ),
                                ),
                                Container(
                                    color: Colors.white,
                                    width: 300,
                                    height: 40,
                                    child: Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(10, 0, 10, 0),
                                      child: TextField(
                                        decoration: InputDecoration(
                                          hintText: 'Contact Number (mobile)',
                                        ),
                                      ),
                                    )),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),

                      Container(
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(
                            100,
                            5,
                            100,
                            5,
                          ),
                          child: Material(
                            elevation: 5.0,
                            borderRadius: BorderRadius.circular(15.0),
                            color: Colors.white,
                            child: MaterialButton(
                              padding:
                                  EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                              onPressed: () {
                                navigateToLoginPage(context);
                              },
                              child: Text("Register",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                        ),
                      ),

                      Container(
                        padding: EdgeInsets.all(10.0),
                        child: new SingleChildScrollView(
                          child: new Text(
                            "1 Description that is too long in text format(Here Data is coming from API) jdlksaf j klkjjflkdsjfkddfdfsdfds " +
                                "2 Description that is too long in text format(Here Data is coming from API) d fsdfdsfsdfd dfdsfdsf sdfdsfsd d " +
                                "3 Description that is too long in text format(Here Data is coming from API)  adfsfdsfdfsdfdsf   dsf dfd fds fs" +
                                "4 Description that is too long in text format(Here Data is coming from API) dsaf dsafdfdfsd dfdsfsda fdas dsad" +
                                "5 Description that is too long in text format(Here Data is coming from API) dsfdsfd fdsfds fds fdsf dsfds fds " +
                                "6 Description that is too long in text format(Here Data is coming from API) asdfsdfdsf fsdf sdfsdfdsf sd dfdsf" +
                                "7 Description that is too long in text format(Here Data is coming from API) df dsfdsfdsfdsfds df dsfds fds fsd" +
                                "8 Description that is too long in text format(Here Data is coming from API)" +
                                "9 Description that is too long in text format(Here Data is coming from API)" +
                                "10 Description that is too long in text format(Here Data is coming from API)",
                            style: new TextStyle(
                              fontSize: 16.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),

                      Expanded(
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Signature(
                              color: Colors.black,
                              // Color of the drawing path
                              strokeWidth: 5.0,
                              // with
                              backgroundPainter: null,
                              // Additional custom painter to draw stuff like watermark
                              onSign: null,
                              // Callback called on user pan drawing
                              key:
                                  null, // key that allow you to provide a GlobalKey that'll let you retrieve the image once user has signed
                            ),
                          ),
                          color: Colors.white,
                        ),
                      ),

                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    )));
  }
}
