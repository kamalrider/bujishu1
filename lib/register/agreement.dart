import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

import '../home.dart';


void main() => runApp(LoginApp());

class LoginApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter login UI',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Login'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.
  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  @override
  Widget build(BuildContext context) {
//    final emailField = TextField(
//      obscureText: false,
//      style: style,
//      decoration: InputDecoration(
//          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
//          hintText: "Emailt",
//          border:
//              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
//    );
//    final passwordField = TextField(
//      obscureText: true,
//      style: style,
//      decoration: InputDecoration(
//          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
//          hintText: "Password",
//          border:
//              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
//    );

    Future navigateToHomePage(context) async {
      Navigator.push(context, MaterialPageRoute(builder: (context) => HomeApp()));
    }

    final loginButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(15.0),
      color: Colors.white,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(15.0, 10, 15.0, 10.0),
        onPressed: () {
          navigateToHomePage(context);
        },
        child: Text("Login",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.black87, fontWeight: FontWeight.bold)),
      ),
    );

    return Scaffold(
      body: Center(
        child: Container(
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage("assets/images/bujishu_main_page.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 150.0,
                  width: 150.0,
                  child: Image.asset(
                    "assets/images/logo.png",
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  height: 250,
                  width: 400,
                  color: Color(0xfffbcc34),
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 46,
                        color: Colors.black,
                        margin: EdgeInsets.all(2),
                        padding: EdgeInsets.fromLTRB(145.0, 12.0, 145.0, 12.0),
                        child: Text(
                          'Sign In',
                          textAlign: TextAlign.center,
                          style:
                          new TextStyle(fontSize: 15, color: Colors.white),
                        ),
                      ),
//                      Container(
//                        height: 100,
//                        color: Colors.red,
//                        child: Image.asset(
//                          "assets/images/logo.png",
//                          fit: BoxFit.contain,
//                        ),
//                      ),

                      Container(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                          child: Container(
                            child: Row(
                              children: <Widget>[
                                Container(
                                  height: 40,
                                  width: 49,
                                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                                  color: Color(0xffE8EBEB),
                                  child: SizedBox(
                                    height: 30,
                                    width: 30,
                                    child: Image.asset(
                                      "assets/images/profile.png",
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Container(
                                    color: Colors.white,
                                    width: 250,
                                    height: 40,
                                    child: Padding(
                                      padding:
                                      EdgeInsets.fromLTRB(10, 0, 10, 0),
                                      child: TextField(
                                        decoration: InputDecoration(
                                          hintText: 'Enter your username',
                                        ),
                                      ),
                                    )),
                              ],
                            ),
                          ),
                        ),
                      ),

                      Container(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                          child: Container(
                            child: Row(
                              children: <Widget>[
                                Container(
                                  height: 40,
                                  width: 49,
                                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                                  color: Color(0xffE8EBEB),
                                  child: SizedBox(
                                    height: 30,
                                    width: 30,
                                    child: Image.asset(
                                      "assets/images/profile.png",
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Container(
                                    color: Colors.white,
                                    width: 250,
                                    height: 40,
                                    child: Padding(
                                      padding:
                                      EdgeInsets.fromLTRB(10, 0, 10, 0),
                                      child: TextField(
                                        decoration: InputDecoration(
                                          hintText: 'Enter your password',
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
                          padding: EdgeInsets.fromLTRB(100, 5, 100,5,),
                          child: loginButton,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
