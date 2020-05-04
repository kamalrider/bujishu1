import 'package:bujishu1/register/register.dart';
import 'package:flutter/material.dart';

import 'login/login.dart';


void main() => runApp(HomeApp());

class HomeApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bujishu entry',
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
      home: MyHomePage(title: 'Bujishu Entry'),
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

    Future navigateToLoginPage(context) async {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LoginApp()));
    }

    Future navigateTozregisterPage(context) async {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => RegisterApp()));
    }

    final dealerButton = Material(
//      elevation: 5.0,
      borderRadius: BorderRadius.circular(5.0),

      color: Color(0xfffbcc34),
      child: MaterialButton(
        height: 50,
        minWidth: 50,
        padding: EdgeInsets.fromLTRB(5.0, 2.0, 5.0, 2.0),
        onPressed: () {},
        child: Text("Be A Dealer",
            textAlign: TextAlign.center,
            style: style.copyWith(color: Colors.black87, fontSize: 10.0)),
      ),
    );

    final loginButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(15.0),
      color: Color(0xfffbcc34),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          navigateToLoginPage(context);
        },
        child: Text("Login",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.black87, fontWeight: FontWeight.bold)),
      ),
    );

    final registerButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(15.0),
      color: Color(0xfffbcc34),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          navigateTozregisterPage(context);
        },
        child: Text("Register",
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

                Container(
                  width: 400,
                  child: Text('Home Page', style: TextStyle(color: Colors.white),),
                )

//                Row(
//                  children: <Widget>[
//                    Text('A home is made of '),
//                    Text('hopes '),
//                    Text('and '),
//                    Text('dreams '),
//                    Text('Let us '),
//                    Text('inspire '),
//                    Text('you to build the perfect home!'),
//                  ],
//                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
