import 'dart:io';

import 'package:bujishu1/login/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';

void main() => runApp(DealerRegisterApp());

enum WidgetMarker { reg, inf, agr }
enum SingingCharacter { selfemployed, employed }

class DealerRegisterApp extends StatelessWidget {
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
  WidgetMarker selectedWidgetMarker = WidgetMarker.reg;

  String assetPDFPath = "";
  String urlPDFPath = "";

  int selectedRadio;

  @override
  void initState() {
    _setup();
    super.initState();

    getFileFromAsset("assets/PDFs/bujishu_agreement.pdf").then((f) {
      setState(() {
        assetPDFPath = f.path;
        print(assetPDFPath);
      });
    });

    selectedRadio = 0;
  }

  Future<File> getFileFromAsset(String asset) async {
    try {
      var data = await rootBundle.load(asset);
      var bytes = data.buffer.asUint8List();
      var dir = await getApplicationDocumentsDirectory();
      File file = File("${dir.path}/mypdf.pdf");

      File assetFile = await file.writeAsBytes(bytes);
      return assetFile;
    } catch (e) {
      throw Exception("Error opening asset file");
    }
  }

  bool registrationc = true;
  bool rememberMe = false;

  void _onRememberMeChanged(bool newValue) => setState(() {
        rememberMe = newValue;

        if (rememberMe) {
          // TODO: Here goes your functionality that remembers the user.
        } else {
          // TODO: Forget the user
        }
      });

//  Future<List<String>> _loadQuestions() async {
//    List<String> questions = [];
//    await rootBundle.loadString('assets/PDFs/bujishu_agreement.pdf').then((q) {
//      for (String i in LineSplitter().convert(q)) {
//        questions.add(i);
//      }
//    });
//    return questions;
//  }

  _setup() async {
    // Retrieve the questions (Processed in the background)
//    List<String> questions = await _loadQuestions();

    // Notify the UI and display the questions
  }

  String password = '';

  List<String> _locations = [
    'Johor',
    'Kedah',
    'Kelantan',
    'Melaka',
    'Negeri Sembilan',
    'Pahang',
    'Perlis',
    'Perak',
    'Pulau Pinang',
    'Sabah',
    'Sarawak',
    'Selangor',
    'Terengganu',
    'W.P Kuala Lumpur',
    'W.P Labuan',
    'W.P Putrajaya',
  ]; // Option 2
  String _selectedLocation; // Option 2
  String _selectedLocation2; // Option 2

  List<String> _gender = [
    'Male',
    'Female',
  ];
  String _selectedgender;

  List<String> _maritalStatus = ['Married', 'Single'];
  String _selectedMStatus;

  List<String> _race = ['Malay', 'Chinese', 'Indian', 'Others'];
  String _selectedRace;

  setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
  }

  final _formKeyreg = GlobalKey<FormState>();
  final _formkeyinf = GlobalKey<FormState>();
  final _formkeyagr = GlobalKey<FormState>();

  Future navigateToLoginPage(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => LoginApp()));
  }

  @override
  Widget build(BuildContext context) {
    final Registration = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(2.0),
      color: Colors.white,
      child: MaterialButton(
//        minWidth: MediaQuery
//            .of(context)
//            .size
//            .width,
        padding: EdgeInsets.fromLTRB(0.0, 2, 0.0, 2.0),
        onPressed: () {
          setState(() {
            selectedWidgetMarker = WidgetMarker.reg;
          });
        },
        child: Text("Registration", textAlign: TextAlign.center),
      ),
    );

    final information = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(2.0),
      color: Colors.white,
      child: MaterialButton(
//        minWidth: MediaQuery
//            .of(context)
//            .size
//            .width,
        padding: EdgeInsets.fromLTRB(0.0, 2, 0.0, 2.0),
        onPressed: () {
          if (_formKeyreg.currentState.validate()) {
            // If the form is valid, display a snackbar. In the real world,
            // you'd often call a server or save the information in a database.
            setState(() {
              selectedWidgetMarker = WidgetMarker.inf;
            });
            Scaffold.of(context)
                .showSnackBar(SnackBar(content: Text('Processing Data')));
          }
        },
        child: Text("Information", textAlign: TextAlign.center),
      ),
    );

    final agreement = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(2.0),
      color: Colors.white,
      child: MaterialButton(
//        minWidth: MediaQuery
//            .of(context)
//            .size
//            .width,
        padding: EdgeInsets.fromLTRB(0.0, 2, 0.0, 2.0),
        onPressed: () {
          if (_formkeyinf.currentState.validate()) {
            // If the form is valid, display a snackbar. In the real world,
            // you'd often call a server or save the information in a database.
            setState(() {
              selectedWidgetMarker = WidgetMarker.agr;
            });
            Scaffold.of(context)
                .showSnackBar(SnackBar(content: Text('Processing Data')));
          }
        },
        child: Text("Introducer", textAlign: TextAlign.center),
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
                    width: double.infinity,
                    color: Color(0xfffbcc34),
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 46,
                          width: double.infinity,
                          color: Colors.black,
                          margin: EdgeInsets.all(2),
                          padding: EdgeInsets.fromLTRB(80.0, 12.0, 80.0, 12.0),
                          child: Text(
                            'Dealer Registration',
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

                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: <Widget>[
                            Container(
                              width: 113,
                              child: Registration,
                            ),
                            Container(
                              width: 113,
                              child: information,
                            ),
                            Container(
                              width: 113,
                              child: agreement,
                            ),
                          ],
                        ),

                        Container(
                          margin: EdgeInsets.all(10),
//                          height: MediaQuery.of(context).size.height ,
                          color: Colors.white,
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Column(children: <Widget>[
                              Container(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 5, 10, 5),
                                  child: Container(
                                    child: getContainer(),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                            ]),
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
      ),
    );
  }

  Widget getContainer() {
    switch (selectedWidgetMarker) {
      case WidgetMarker.reg:
        return getRegistration();
      case WidgetMarker.inf:
        return getInformation();
      case WidgetMarker.agr:
        return getIntroducer();
    }
    return getRegistration();
  }

  Widget getRegistration() {
    return Form(
        key: _formKeyreg,
        child: Column(
          children: <Widget>[
            Container(
              width: 300,
              height: 40,
              color: Colors.black,
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: Text(
                  'Account Particulars',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              width: 300,
              height: 20,
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Text('Email'),
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 10),
                color: Colors.white,
                width: 300,
                height: 40,
//            decoration: BoxDecoration(
//              border: Border.all(
////                color: Colors.black,
//              )
//            ),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      Pattern pattern = '@';
                      RegExp regex = new RegExp(pattern);
                      if (!regex.hasMatch(value))
                        return 'Invalid Email';
                      else if (value.isEmpty) return 'Please put your email';

                      return null;
                    },
                    decoration: InputDecoration(
                        hintText: 'email',
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 0.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.grey,
                        ))),
                  ),
                )),
            Container(
              margin: EdgeInsets.only(top: 10),
              width: 300,
              height: 20,
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Text('Password'),
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 10),
                color: Colors.white,
                width: 300,
                height: 40,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: TextFormField(
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please Enter your username';
                      } else if (value.length < 8) {
                        return 'Password minimum 8 chaeacter';
                      }

                      password = value;
                      return null;
                    },
                    decoration: InputDecoration(
                        hintText: 'password',
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 0.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.grey,
                        ))),
                  ),
                )),
            Container(
              margin: EdgeInsets.only(top: 10),
              width: 300,
              height: 20,
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Text('Confirm Password'),
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 10),
                color: Colors.white,
                width: 300,
                height: 40,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: TextFormField(
                    validator: (value) {
                      if (value != password) {
                        return 'Didn\'t match your password';
                      } else if (value.isEmpty) {
                        return 'Please Enter confirm password';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        hintText: 'confirm password',
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 0.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.grey,
                        ))),
                  ),
                )),
            SizedBox(
              height: 20,
            ),
            Align(
                alignment: Alignment.topRight,
//                    heightFactor: 3,
                child: SizedBox(
                  height: 40,
                  width: 60,
                  child: Container(
//      elevation: 5.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        gradient: LinearGradient(
                          colors: [
                            Colors.orange,
                            Color(0xfffbcc34),
                            Colors.yellowAccent,

                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                        )),
                    child: MaterialButton(
                      height: 50,
                      minWidth: 50,
                      padding: EdgeInsets.fromLTRB(5.0, 2.0, 5.0, 2.0),
                      onPressed: () {
                        if (_formKeyreg.currentState.validate()) {
                          // If the form is valid, display a snackbar. In the real world,
                          // you'd often call a server or save the information in a database.
                          setState(() {
                            selectedWidgetMarker = WidgetMarker.inf;
                          });
                          Scaffold.of(context).showSnackBar(
                              SnackBar(content: Text('Processing Data')));
                        }
                      },
                      child: Text("Next",
                          textAlign: TextAlign.center,
                          style:
                              TextStyle(color: Colors.black87)),
                    ),
                  ),
                )),
          ],
        ));
  }

  Widget getInformation() {
    return Form(
        key: _formkeyinf,
        child: Column(
          children: <Widget>[
            Container(
              width: 300,
              height: 40,
              color: Colors.black,
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: Text(
                  'Personal Particulars',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              width: 300,
              height: 20,
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Text('Full Name'),
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 10),
                color: Colors.white,
                width: 300,
                height: 40,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: TextFormField(
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please Enter your full name';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        hintText: 'full name',
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 0.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.grey,
                        ))),
                  ),
                )),
            Container(
              margin: EdgeInsets.only(top: 10),
              width: 300,
              height: 20,
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Text('NRIC Number'),
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 10),
                color: Colors.white,
                width: 300,
                height: 40,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: TextFormField(
                    inputFormatters: [
                      WhitelistingTextInputFormatter.digitsOnly
                    ],
                    validator: (value) {
                      if (value.length != 12) {
                        return 'IC has only 12 digit and no dash';
                      } else if (value.isEmpty) {
                        return 'Please enter your IC';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        hintText: 'nric number',
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 0.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.grey,
                        ))),
                  ),
                )),
            Container(
              margin: EdgeInsets.only(top: 10),
              width: 300,
              height: 20,
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Text('Date of Birth'),
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 10),
                color: Colors.white,
                width: 300,
                height: 40,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: TextFormField(
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please Enter your date of birth';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        hintText: 'Date of Birth',
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 0.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.grey,
                        ))),
                  ),
                )),
            Container(
              margin: EdgeInsets.only(top: 10),
              width: 300,
              height: 20,
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Text('Gender'),
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 10),
                color: Colors.white,
                width: 300,
                height: 50,
                child: DropdownButton(
                  hint: Text('Please Choose your gender '),
                  value: _selectedgender,
                  onChanged: (newValue) {
                    setState(() {
                      _selectedgender = newValue;
                    });
                  },
                  items: _gender.map((location) {
                    return DropdownMenuItem(
                      child: new Text(location),
                      value: location,
                    );
                  }).toList(),
                )),
            Container(
              margin: EdgeInsets.only(top: 10),
              width: 300,
              height: 20,
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Text('Race'),
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 10),
                color: Colors.white,
                width: 300,
                height: 50,
                child: DropdownButton(
                  hint: Text('Please Choose your race                  '),
                  value: _selectedRace,
                  onChanged: (newValue) {
                    setState(() {
                      _selectedRace = newValue;
                    });
                  },
                  items: _race.map((location) {
                    return DropdownMenuItem(
                      child: new Text(location),
                      value: location,
                    );
                  }).toList(),
                )),
            Container(
              margin: EdgeInsets.only(top: 10),
              width: 300,
              height: 20,
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Text('Marital Status'),
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 10),
                color: Colors.white,
                width: 300,
                height: 50,
                child: DropdownButton(
                  hint: Text('Please Choose your marital status  '),
                  value: _selectedMStatus,
                  onChanged: (newValue) {
                    setState(() {
                      _selectedMStatus = newValue;
                    });
                  },
                  items: _maritalStatus.map((location) {
                    return DropdownMenuItem(
                      child: new Text(location),
                      value: location,
                    );
                  }).toList(),
                )),
            Container(
              margin: EdgeInsets.only(top: 10),
              width: 300,
              height: 20,
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Text('Address Line 1'),
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 10),
                color: Colors.white,
                width: 300,
                height: 40,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: TextFormField(
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please Enter your address 1';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        hintText: 'Residential Address Line 1',
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 0.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.grey,
                        ))),
                  ),
                )),
            Container(
              margin: EdgeInsets.only(top: 10),
              width: 300,
              height: 20,
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Text('Address Line 2'),
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 10),
                color: Colors.white,
                width: 300,
                height: 40,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Residential Address Line 2',
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 0.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.grey,
                        ))),
                  ),
                )),
            Container(
              margin: EdgeInsets.only(top: 10),
              width: 300,
              height: 20,
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Text('Address Line 3'),
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 10),
                color: Colors.white,
                width: 300,
                height: 40,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Residential Address Line 3',
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 0.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.grey,
                        ))),
                  ),
                )),
            Container(
              margin: EdgeInsets.only(top: 10),
              width: 300,
              height: 20,
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Text('Postcode'),
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 10),
                color: Colors.white,
                width: 300,
                height: 40,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: TextFormField(
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please Enter your username';
                      } else if (value.length != 5) {
                        return 'Poscode invalid';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        hintText: 'postcode',
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 0.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.grey,
                        ))),
                  ),
                )),
            Container(
              margin: EdgeInsets.only(top: 10),
              width: 300,
              height: 20,
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Text('City'),
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 10),
                color: Colors.white,
                width: 300,
                height: 40,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: TextFormField(
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please Enter your city';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        hintText: 'city',
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 0.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.grey,
                        ))),
                  ),
                )),
            Container(
              margin: EdgeInsets.only(top: 10),
              width: 300,
              height: 20,
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Text('State'),
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 10),
                color: Colors.white,
                width: 300,
                height: 50,
                child: DropdownButton(
                  hint: Text('Please Choose your state                  '),
                  value: _selectedLocation,
                  onChanged: (newValue) {
                    setState(() {
                      _selectedLocation = newValue;
                    });
                  },
                  items: _locations.map((location) {
                    return DropdownMenuItem(
                      child: new Text(location),
                      value: location,
                    );
                  }).toList(),
                )
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              width: 300,
              height: 20,
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Text('Contact Number (Home)'),
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 10),
                color: Colors.white,
                width: 300,
                height: 40,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Contact Number (Home)',
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 0.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.grey,
                        ))),
                  ),
                )),
            Container(
              margin: EdgeInsets.only(top: 10),
              width: 300,
              height: 20,
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Text('Contact Number (Mobile)'),
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 10),
                color: Colors.white,
                width: 300,
                height: 40,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: TextFormField(
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please Enter your mobile number';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        hintText: 'Contact Number (Mobile)',
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 0.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.grey,
                        ))),
                  ),
                )),
            Container(
              width: 300,
              height: 40,
              margin: EdgeInsets.only(top: 10),
              color: Colors.black,
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: Text(
                  'Spouse\'s Particulars',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              width: 300,
              height: 20,
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Text('Spouse\'s Full Name(As per NRIC)'),
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 10),
                color: Colors.white,
                width: 300,
                height: 40,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: TextFormField(
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please Enter your spouse\'s  full name';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        hintText: 'full name',
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 0.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.grey,
                        ))),
                  ),
                )),
            Container(
              margin: EdgeInsets.only(top: 10),
              width: 300,
              height: 20,
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Text('Spouse\'s NRIC Number'),
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 10),
                color: Colors.white,
                width: 300,
                height: 40,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: TextFormField(
                    validator: (value) {
                      if (value.length != 12) {
                        return 'IC has only 12 digit and no dash';
                      } else if (value.isEmpty) {
                        return 'Please enter your spouse\'s IC';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        hintText: 'nric number',
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 0.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.grey,
                        ))),
                  ),
                )),
            Container(
              margin: EdgeInsets.only(top: 10),
              width: 300,
              height: 20,
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Text('Spouse\'s Date of Birth'),
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 10),
                color: Colors.white,
                width: 300,
                height: 40,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Date of Birth',
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 0.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.grey,
                        ))),
                  ),
                )),
            Container(
              margin: EdgeInsets.only(top: 10),
              width: 300,
              height: 20,
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Text('Spouse\'s Occupation'),
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 10),
                color: Colors.white,
                width: 300,
                height: 40,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: TextFormField(
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter your spouse\'s  Occupation';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        hintText: 'Occupation',
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 0.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.grey,
                        ))),
                  ),
                )),
            Container(
              margin: EdgeInsets.only(top: 10),
              width: 300,
              height: 20,
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Text('Spouse\'s Contact Number (office)'),
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 10),
                color: Colors.white,
                width: 300,
                height: 40,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: TextFormField(
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter spouse\'s office number';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        hintText: 'Contact Number (office)',
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 0.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.grey,
                        ))),
                  ),
                )),
            Container(
              margin: EdgeInsets.only(top: 10),
              width: 300,
              height: 20,
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Text('Spouse\'s Contact Number (mobile)'),
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 10),
                color: Colors.white,
                width: 300,
                height: 40,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: TextFormField(
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter your spouse\'s mobile number';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        hintText: 'Contact Number (mobile)',
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 0.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.grey,
                        ))),
                  ),
                )),
            Container(
              margin: EdgeInsets.only(top: 10),
              width: 300,
              height: 20,
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Text('Spouse\'s Email'),
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 10),
                color: Colors.white,
                width: 300,
                height: 40,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: TextFormField(
                    // controller: _textEditingController,
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      Pattern pattern = '@';
                      RegExp regex = new RegExp(pattern);
                      if (!regex.hasMatch(value))
                        return 'Invalid Email';
                      else if (value.isEmpty) return 'Please put your email';

                      return null;
                    },
                    decoration: InputDecoration(
                        hintText: 'email',
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 0.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.grey,
                        ))),
                  ),
                )),
            Container(
              margin: EdgeInsets.only(top: 10),
              width: 300,
              height: 40,
              color: Colors.black,
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: Text(
                  'Employment History',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  ButtonBar(
                    alignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Radio(
                        value: 1,
                        groupValue: selectedRadio,
                        activeColor: Colors.black,
                        onChanged: (val) {
                          print("Radia $val");
                          setSelectedRadio(val);
                        },
                      ),
                    ],
                  ),
                  Container(
                    child: Text('Self Employed'),
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Radio(
                        value: 2,
                        groupValue: selectedRadio,
                        activeColor: Colors.black,
                        onChanged: (val) {
                          print("Radia $val");
                          setSelectedRadio(val);
                        },
                      ),
                    ],
                  ),
                  Container(
                    child: Text('Employed'),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              width: 300,
              height: 20,
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Text('Name of Company'),
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 10),
                color: Colors.white,
                width: 300,
                height: 40,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Name of Company',
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 0.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.grey,
                        ))),
                  ),
                )),
            Container(
              margin: EdgeInsets.only(top: 10),
              width: 300,
              height: 20,
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Text('Address Line 1'),
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 10),
                color: Colors.white,
                width: 300,
                height: 40,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Company Address Line 1',
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 0.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.grey,
                        ))),
                  ),
                )),
            Container(
              margin: EdgeInsets.only(top: 10),
              width: 300,
              height: 20,
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Text('Address Line 2'),
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 10),
                color: Colors.white,
                width: 300,
                height: 40,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Company Address Line 2',
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 0.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.grey,
                        ))),
                  ),
                )),
            Container(
              margin: EdgeInsets.only(top: 10),
              width: 300,
              height: 20,
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Text('Address Line 3'),
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 10),
                color: Colors.white,
                width: 300,
                height: 40,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Company Address Line 3',
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 0.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.grey,
                        ))),
                  ),
                )),
            Container(
              margin: EdgeInsets.only(top: 10),
              width: 300,
              height: 20,
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Text('Postcode'),
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 10),
                color: Colors.white,
                width: 300,
                height: 40,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: 'postcode',
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 0.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.grey,
                        ))),
                  ),
                )),
            Container(
              margin: EdgeInsets.only(top: 10),
              width: 300,
              height: 20,
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Text('City'),
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 10),
                color: Colors.white,
                width: 300,
                height: 40,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: 'city',
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 0.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.grey,
                        ))),
                  ),
                )),
            Container(
              margin: EdgeInsets.only(top: 10),
              width: 300,
              height: 20,
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Text('State'),
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 10),
                color: Colors.white,
                width: 300,
                height: 50,
                child: DropdownButton(
                  hint: Text('Please Choose your state                  '),
                  value: _selectedLocation2,
                  onChanged: (newValue) {
                    setState(() {
                      _selectedLocation2 = newValue;
                    });
                  },
                  items: _locations.map((location) {
                    return DropdownMenuItem(
                      child: new Text(location),
                      value: location,
                    );
                  }).toList(),
                )),
            SizedBox(
              height: 20,
            ),
            Align(
                alignment: Alignment.topRight,
//                    heightFactor: 3,
                child: SizedBox(
                  height: 40,
                  width: 60,
                  child: Container(
//      elevation: 5.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        gradient: LinearGradient(
                          colors: [
                            Colors.orange,
                            Color(0xfffbcc34),
                            Colors.yellowAccent,

                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                        )),
                    child: MaterialButton(
                      height: 50,
                      minWidth: 50,
                      padding: EdgeInsets.fromLTRB(5.0, 2.0, 5.0, 2.0),
                      onPressed: () {
                        if (_formkeyinf.currentState.validate()) {
                          // If the form is valid, display a snackbar. In the real world,
                          // you'd often call a server or save the information in a database.
                          setState(() {
                            selectedWidgetMarker = WidgetMarker.agr;
                          });
                          Scaffold.of(context).showSnackBar(
                              SnackBar(content: Text('Processing Data')));
                        }
                      },
                      child: Text("Next",
                          textAlign: TextAlign.center,
                          style:
                              TextStyle(color: Colors.black87)),
                    ),
                  ),
                )),
          ],
        ));
  }

  Widget getIntroducer() {
    return Form(
        key: _formkeyagr,
        child: Container(
            child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 10),
              width: 300,
              height: 40,
              color: Colors.black,
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: Text(
                  'Introducer\'s Particular',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              width: 300,
              height: 20,
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Text('Introducer\'s Name (As per IC)'),
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 10),
                color: Colors.white,
                width: 300,
                height: 40,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: TextFormField(
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter your introducer name';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        hintText: 'Introducer\'s Name',
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 0.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.grey,
                        ))),
                  ),
                )),
            Container(
              margin: EdgeInsets.only(top: 10),
              width: 300,
              height: 20,
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 10),
                color: Colors.white,
                width: 300,
                height: 40,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: TextFormField(
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter your introducer ID';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        hintText: 'Introducer\'s ID',
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 0.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.grey,
                        ))),
                  ),
                )),
            Container(
              margin: EdgeInsets.only(top: 10),
              width: 300,
              height: 20,
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Text('Date of Birth'),
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 10),
                color: Colors.white,
                width: 300,
                height: 40,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Date of Birth',
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 0.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.grey,
                        ))),
                  ),
                )),
            SizedBox(
              height: 20,
            ),
            Align(
                alignment: Alignment.topRight,
//                    heightFactor: 3,
                child: SizedBox(
                  height: 40,
                  width: 80,
                  child: signUpbtn(),
                )),
          ],
        )));
  }

  Widget signUpbtn() {
    return Container(
      child: Container(
//      elevation: 5.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            gradient: LinearGradient(
              colors: [
                Colors.orange,
                Color(0xfffbcc34),
                Colors.yellowAccent,

              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            )),
        child: MaterialButton(
          height: 50,
          minWidth: 50,
          padding: EdgeInsets.fromLTRB(5.0, 2.0, 5.0, 2.0),
          onPressed: () {
            setState(() {
              if (_formkeyagr.currentState.validate()) {
                // If the form is valid, display a snackbar. In the real world,
                // you'd often call a server or save the information in a database.
                navigateToLoginPage(context);
                Scaffold.of(context)
                    .showSnackBar(SnackBar(content: Text('Processing Data')));
              }
            });
          },
          child: Text("Sign Up",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black87)),
        ),
      ),
    );
  }
}
