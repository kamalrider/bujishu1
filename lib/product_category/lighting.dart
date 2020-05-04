import 'package:bujishu1/Tutorial/getdatafromanotherpage.dart';
import 'package:bujishu1/home/customer/nav_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

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

class DataModel {
  String title;
  String image;
  String description;
  bool expended;

  DataModel({this.title, this.image, this.description, this.expended = false});
}

class _LightingStates extends State<LightingState> {
  List<String> _locations = ['All CAtegories (VVIP)']; // Option 2
  String _selectedLocation; // Option 2

  List<DataModel> dataModel = [
    DataModel(
      title: 'LED',
      description: 'Eyeball\nDownlight',
      image: 'assets/images/eyeball.png',
    ),
    DataModel(
      title: 'PEN',
      description: 'Eyeball\nDownlight',
      image: 'assets/images/officelamp.jpg',
    ),
    DataModel(
      title: 'LED',
      description: 'Eyeball\nDownlight',
      image: 'assets/images/eyeball.png',
    ),
    DataModel(
      title: 'PEN',
      description: 'Eyeball\nDownlight',
      image: 'assets/images/officelamp.jpg',
    ),
    DataModel(
      title: 'LED',
      description: 'Eyeball\nDownlight',
      image: 'assets/images/eyeball.png',
    ),
    DataModel(
      title: 'PEN',
      description: 'Eyeball\nDownlight',
      image: 'assets/images/officelamp.jpg',
    ),
  ];

  List<DataModel> datas = null;

  WidgetMarker selectedWidgetMarker = WidgetMarker.inn;

  double containerHeight;

  @override
  Widget build(BuildContext context) {
    Widget getImage(DataModel item) {
      return Container(
        child: Column(
          children: <Widget>[
            Container(
              //height: 100,
              child: Image.asset(item.image),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              item.title,
              textAlign: TextAlign.center,
            )
          ],
        ),
      );
    }

    Widget getItem(DataModel item) {
      return Container(
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 0.08,
              child: Image.asset(item.image),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              item.title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(left: 5, right: 5),
              color: Colors.grey,
              height: 1,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              item.description,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      );
    }

    return Scaffold(
      drawer: Container(
        width: 200,
        child: NavDrawer(),
      ),
      appBar: AppBar(
        iconTheme: new IconThemeData(color: Color(0xfffbcc34)),
        backgroundColor: Colors.black,
        actions: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 50),
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: <Widget>[
                Flexible(
                  flex: 3,
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Image.asset('assets/images/logo.png'),
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        height: 20,
                        child: Image.asset(
                          'assets/images/profile.png',
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: Image.asset(
                          'assets/images/heart.png',
                          fit: BoxFit.fitHeight,
                          height: 20,
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                          height: 20,
                          child: Image.asset(
                            'assets/images/cart.png',
                            fit: BoxFit.fitHeight,
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [],
        ),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.black,
                  border: Border(
                      bottom: BorderSide(width: 2, color: Colors.yellow)),
                ),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Row(
                      children: <Widget>[
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.6,
                          height: MediaQuery.of(context).size.height * 0.05,

                          //color: Colors.white,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white),
                          child: Row(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.only(left: 10),
                                width: MediaQuery.of(context).size.width * 0.5,
                                child: TextField(),
                              ),
                              Container(
                                width: 2,
                                color: Color(0xfffbcc34),
                              ),
                              Container(
                                width: 30,
                                padding: EdgeInsets.fromLTRB(
                                  8,
                                  8,
                                  8,
                                  8,
                                ),
                                child: Image.asset(
                                  'assets/images/search.png',
                                  fit: BoxFit.fitWidth,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Container(
                          width: 30,
                          margin: EdgeInsets.only(left: 20),
                          padding: EdgeInsets.fromLTRB(
                            0,
                            0,
                            0,
                            0,
                          ),
                          child: Image.asset(
                            'assets/images/camera.png',
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        Container(
                          width: 30,
                          margin: EdgeInsets.only(left: 20),
                          padding: EdgeInsets.fromLTRB(
                            0,
                            0,
                            0,
                            0,
                          ),
                          child: Image.asset(
                            'assets/images/mike.png',
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 8,
              child: Container(
                child: Container(
                  width: double.infinity,
                  child: CustomScrollView(
                    slivers: <Widget>[
                      SliverList(
                        delegate: SliverChildListDelegate([
                          MaterialButton(
                            onPressed: () {
                              setState(() {
                                dataModel.forEach((f) => f.expended = false);

                                //data.expended = !data.expended;
                              });
                            },
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Column(
                                children: <Widget>[
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.01,
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                        padding: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                            color: Color(0xffF0F1F1),
                                            border: Border(
                                                bottom: BorderSide(
                                                    width: 2,
                                                    color: Colors.grey))),
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.9,
                                        child: Row(
                                          children: <Widget>[
                                            Container(
                                              child: InkWell(
                                                child: Text(
                                                  'Home',
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                      color: Colors.lightBlue),
                                                ),
                                                //onTap: () {}
                                              ),
                                            ),
                                            Text('    /   Lighting'),
                                          ],
                                        )),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.02,
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left: 20),
                                    width: MediaQuery.of(context).size.width,
                                    child: Text(
                                      'Lighting',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 30,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.02,
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left: 20),
                                    width: MediaQuery.of(context).size.width,
                                    child: Text(
                                      'Featured Categories',
                                      style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.02,
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: 10, right: 10),
                                    child: Container(
                                      color: Colors.grey,
                                      height: 1,
                                    ),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.05,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ]),
                      ),
                      SliverGrid(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                        delegate: SliverChildListDelegate(dataModel.map((data) {
                          return MaterialButton(
                            onPressed: () {
                              setState(() {
                                dataModel.forEach((f) => f.expended = false);

                                //data.expended = !data.expended;
                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: GestureDetector(
                                child: getImages(data),
                                onTap: () {
                                  setState(() {
                                    dataModel
                                        .forEach((f) => f.expended = false);

                                    data.expended = !data.expended;
                                  });
                                },
                              ),
                            ),
                          );
                        }).toList()),
                      ),
                      SliverList(
                        delegate: SliverChildListDelegate([
                          Container(
                            width: MediaQuery.of(context).size.width,
                            color: Colors.black,
                            child: Column(
                              children: <Widget>[
                                Container(
                                  height: 2,
                                  color: Color(0xffD4AF37),
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.01,
                                ),
                                Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Text(
                                        'About Us',
                                        style: TextStyle(
                                            color: Color(0xfffbcc34),
                                            fontSize: 5),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        'Partnership',
                                        style: TextStyle(
                                            color: Color(0xfffbcc34),
                                            fontSize: 5),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        'Sign In',
                                        style: TextStyle(
                                            color: Color(0xfffbcc34),
                                            fontSize: 5),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Text(
                                        'FAQ',
                                        style: TextStyle(
                                            color: Color(0xfffbcc34),
                                            fontSize: 5),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        'Privacy Policy',
                                        style: TextStyle(
                                            color: Color(0xfffbcc34),
                                            fontSize: 5),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        'View Cart',
                                        style: TextStyle(
                                            color: Color(0xfffbcc34),
                                            fontSize: 5),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Text(
                                        'Warranty',
                                        style: TextStyle(
                                            color: Color(0xfffbcc34),
                                            fontSize: 5),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        'Contact Us',
                                        style: TextStyle(
                                            color: Color(0xfffbcc34),
                                            fontSize: 5),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        'My Wishlist',
                                        style: TextStyle(
                                            color: Color(0xfffbcc34),
                                            fontSize: 5),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.01,
                                ),
                              ],
                            ),
                          ),
                        ]),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        child: Icon(Icons.navigation),
        backgroundColor: Colors.green,
      ),
    );
  }

  Widget getImages(DataModel item) {
    containerHeight = item.expended ? 60 : 0;

    return Container(
      child: Column(
        children: <Widget>[
          Expanded(
            child: FittedBox(
              child: Image.asset(item.image),
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(4),
            child: Text(item.title),
          ),
          AnimatedContainer(
            height: containerHeight,
            duration: Duration(seconds: 1),
            curve: Curves.fastOutSlowIn,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Divider(
                    height: 6,
                    color: Colors.grey,
                  ),
                ),
                InkWell(
                  child: Text(
                    item.description,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 12),
                  ),
                  onTap: () {
                    var route = new MaterialPageRoute(
                      builder: (BuildContext context) =>
                          new NextPage(value: item.title),
                    );
                    Navigator.of(context).push(route);
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

enum rankMarker { all, sta, mod, pre }

class NextPage extends StatefulWidget {
  final String value;

  NextPage({Key key, this.value}) : super(key: key);

  @override
  _NextPageState createState() => new _NextPageState();
}

class LigthingDetail {
  String title;
  String image;
  String description;
  bool expended;
  String rank;
  double score;
  int rating;

  LigthingDetail(
      {this.title,
      this.image,
      this.description,
      this.rank,
      this.score,
      this.rating,
      this.expended = false});
}

class _NextPageState extends State<NextPage> {
  rankMarker selectedrank = rankMarker.all;

  List<LigthingDetail> ligthingData = [
    LigthingDetail(
      title: 'LED',
      description: 'Single Round Eyeball White Casing With GU 10001',
      image: 'assets/images/eyeball.png',
      rank: 'STANDARD',
      score: 3,
      rating: 120,
    ),
    LigthingDetail(
      title: 'PEN',
      description: 'Eyeball\nDownlight',
      image: 'assets/images/officelamp.jpg',
      rank: 'STANDARD',
      score: 3,
      rating: 120,
    ),
    LigthingDetail(
      title: 'LED',
      description: 'Single Round Eyeball White Casing With GU 10001',
      image: 'assets/images/eyeball.png',
      rank: 'MODERATE',
      score: 3.5,
      rating: 120,
    ),
    LigthingDetail(
      title: 'PEN',
      description: 'Eyeball\nDownlight',
      image: 'assets/images/officelamp.jpg',
      rank: 'MODERATE',
      score: 3.5,
      rating: 120,
    ),
    LigthingDetail(
      title: 'LED',
      description: 'Single Round Eyeball White Casing With GU 10001',
      image: 'assets/images/eyeball.png',
      rank: 'PREMIUM',
      score: 5,
      rating: 120,
    ),
    LigthingDetail(
      title: 'PEN',
      description: 'Single Round Eyeball White Casing With GU 10001',
      image: 'assets/images/officelamp.jpg',
      rank: 'PREMIUM',
      score: 5,
      rating: 120,
    ),
  ];

  List<LigthingDetail> datas;

  List<LigthingDetail> datassta;

  List<LigthingDetail> datasmod;

  List<LigthingDetail> dataspre;

  WidgetMarker selectedWidgetMarker = WidgetMarker.inn;

  double containerHeight;
  String dTitle = "";

  Color dColor(String rank) {
    if (rank == 'STANDARD') {
      return Colors.red;
    } else if (rank == 'MODERATE') {
      return Colors.blue;
    } else if (rank == 'PREMIUM') {
      return Colors.yellow;
    } else
      return Colors.red;
  }

  @override
  void initState() {
    super.initState();
    dTitle = widget.value;


  }

  @override
  Widget build(BuildContext context) {

    if (selectedrank == rankMarker.all)
      datas = ligthingData.where((i) => i.title == dTitle).toList();
    else if (selectedrank == rankMarker.sta)
      datassta = datas
          .where((i) =>  i.rank == 'STANDARD')
          .toList();
    else if (selectedrank == rankMarker.mod)
      datasmod = datas
          .where((i) => i.rank == 'MODERATE')
          .toList();
    else if (selectedrank == rankMarker.pre)
      dataspre = datas
          .where((i) => i.rank == 'PREMIUM')
          .toList();


    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Next Page"),
        backgroundColor: Colors.black,
      ),
//      body: new Text("${widget.value}"),
      body: Column(


        children: <Widget>[
          Container(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height:
                    MediaQuery.of(context).size.height * 0.06,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      'Featured Deals',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    height:
                    MediaQuery.of(context).size.height * 0.06,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Container(
                      color: Colors.grey,
                      height: 1,
                    ),
                  ),
                  SizedBox(
                    height:
                    MediaQuery.of(context).size.height * 0.05,
                  ),
                ],
              ),
            ),
          ),
          Container(color: Colors.grey, child: SliverAll(),),
          Container(
            child: Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.black,
              child: Column(
                children: <Widget>[
                  Container(
                    height: 2,
                    color: Color(0xffD4AF37),
                  ),
                  SizedBox(
                    height:
                    MediaQuery.of(context).size.height * 0.01,
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          'About Us',
                          style: TextStyle(
                              color: Color(0xfffbcc34),
                              fontSize: 5),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'Partnership',
                          style: TextStyle(
                              color: Color(0xfffbcc34),
                              fontSize: 5),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'Sign In',
                          style: TextStyle(
                              color: Color(0xfffbcc34),
                              fontSize: 5),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          'FAQ',
                          style: TextStyle(
                              color: Color(0xfffbcc34),
                              fontSize: 5),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'Privacy Policy',
                          style: TextStyle(
                              color: Color(0xfffbcc34),
                              fontSize: 5),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'View Cart',
                          style: TextStyle(
                              color: Color(0xfffbcc34),
                              fontSize: 5),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          'Warranty',
                          style: TextStyle(
                              color: Color(0xfffbcc34),
                              fontSize: 5),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'Contact Us',
                          style: TextStyle(
                              color: Color(0xfffbcc34),
                              fontSize: 5),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'My Wishlist',
                          style: TextStyle(
                              color: Color(0xfffbcc34),
                              fontSize: 5),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height:
                    MediaQuery.of(context).size.height * 0.01,
                  ),
                ],
              ),
            ),
          )
        ],

      ),
      floatingActionButton: Center(
        child: Row(
          children: <Widget>[
            OutlineButton(
              child: Container(child: Text('All')),
              onPressed: () {
                setState(() {
                  selectedrank = rankMarker.all;
                });
              },
            ),
            OutlineButton(
              child: Text('Standard'),
              onPressed: () {
                setState(() {
                  selectedrank = rankMarker.sta;
                });

              },
            ),
            OutlineButton(
              child: Container(child: Text('Moderate')),
              onPressed: () {
                setState(() {
                  selectedrank = rankMarker.mod;
                });
              },
            ),
            OutlineButton(
              child: Container(child: Text('Premium')),
              onPressed: () {
                setState(() {
                  selectedrank = rankMarker.pre;
                });
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget getRank() {
   if (selectedrank == rankMarker.all)
        return SliverAll();
     else if (selectedrank == rankMarker.sta)
        return SliverStandard();
     else if (selectedrank == rankMarker.mod)
        return SliverModerate();
   else if (selectedrank == rankMarker.pre)
        return SliverPremium();
  }

  Widget SliverAll() {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemCount: 2,
      itemBuilder: (context, index){

        final item = datas[index];

        return MaterialButton(
          onPressed: () {
            setState(() {
              ligthingData.forEach((f) => f.expended = false);

              //data.expended = !data.expended;
            });
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              child: getImages(item),
              onTap: () {
                setState(() {
                  ligthingData.forEach((f) => f.expended = false);

                  item.expended = !item.expended;

                });
              },
            ),
          ),
        );;

      },

      );


  }

  Widget SliverStandard() {
    return SliverGrid(
      gridDelegate:
      SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      delegate: SliverChildListDelegate(datassta.map((data) {
        return  Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              child: getImages1(data),
              onTap: () {
                setState(() {
                  ligthingData.forEach((f) => f.expended = false);

                  data.expended = !data.expended;
                });
              },
            ),
          );

      }).toList()),
    );
  }

  Widget SliverModerate() {
    return SliverGrid(
      gridDelegate:
      SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      delegate: SliverChildListDelegate(datasmod.map((data) {
        return  Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              child: getImages2(data),
              onTap: () {
                setState(() {
                  ligthingData.forEach((f) => f.expended = false);

                  data.expended = !data.expended;
                });
              },
            ),
          );

      }).toList()),
    );
  }

  Widget SliverPremium() {
    return SliverGrid(
      gridDelegate:
      SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      delegate: SliverChildListDelegate(dataspre.map((data) {
        return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              child: getImages3(data),
              onTap: () {
                setState(() {
                  ligthingData.forEach((f) => f.expended = false);

                  data.expended = !data.expended;
                });
              },
            ),
          );

      }).toList()),
    );
  }

  Widget getImages(LigthingDetail item) {
    containerHeight = item.expended ? 60 : 0;

    return Container(
      height: MediaQuery.of(context).size.height * 0.9,
      color: Color(0xffF0F1F1),
      child: Banner(
        message: item.rank,
        textStyle: TextStyle(color: Colors.black),
        location: BannerLocation.topEnd,
        color: dColor(item.rank),
        child: Column(
          children: <Widget>[
            Expanded(
              child: FittedBox(
                child: Image.asset(item.image),
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(4),
              child: Text(item.description),
            ),
            FlutterRatingBarIndicator(
              rating: item.score,
              itemCount: 5,
              itemSize: 15.0,
              emptyColor: Colors.amber.withAlpha(50),
            ),
            Padding(
              padding: EdgeInsets.all(4),
              child: Text((item.rating).toString() + ' ratings'),
            ),
          ],
        ),
      ),
    );
  }

  Widget getImages1(LigthingDetail item) {
    containerHeight = item.expended ? 60 : 0;

    return Container(
      color: Color(0xffF0F1F1),
      child: Banner(
        message: item.rank,
        textStyle: TextStyle(color: Colors.black),
        location: BannerLocation.topEnd,
        color: dColor(item.rank),
        child: Column(
          children: <Widget>[
            Expanded(
              child: FittedBox(
                child: Image.asset(item.image),
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(4),
              child: Text(item.description),
            ),
            FlutterRatingBarIndicator(
              rating: item.score,
              itemCount: 5,
              itemSize: 15.0,
              emptyColor: Colors.amber.withAlpha(50),
            ),
            Padding(
              padding: EdgeInsets.all(4),
              child: Text((item.rating).toString() + ' ratings'),
            ),
          ],
        ),
      ),
    );
  }

  Widget getImages2(LigthingDetail item) {
    containerHeight = item.expended ? 60 : 0;

    return Container(
      color: Color(0xffF0F1F1),
      child: Banner(
        message: item.rank,
        textStyle: TextStyle(color: Colors.black),
        location: BannerLocation.topEnd,
        color: dColor(item.rank),
        child: Column(
          children: <Widget>[
            Expanded(
              child: FittedBox(
                child: Image.asset(item.image),
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(4),
              child: Text(item.description),
            ),
            FlutterRatingBarIndicator(
              rating: item.score,
              itemCount: 5,
              itemSize: 15.0,
              emptyColor: Colors.amber.withAlpha(50),
            ),
            Padding(
              padding: EdgeInsets.all(4),
              child: Text((item.rating).toString() + ' ratings'),
            ),
          ],
        ),
      ),
    );
  }

  Widget getImages3(LigthingDetail item) {
    containerHeight = item.expended ? 60 : 0;

    return Container(
      color: Color(0xffF0F1F1),
      child: Banner(
        message: item.rank,
        textStyle: TextStyle(color: Colors.black),
        location: BannerLocation.topEnd,
        color: dColor(item.rank),
        child: Column(
          children: <Widget>[
            Expanded(
              child: FittedBox(
                child: Image.asset(item.image),
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(4),
              child: Text(item.description),
            ),
            FlutterRatingBarIndicator(
              rating: item.score,
              itemCount: 5,
              itemSize: 15.0,
              emptyColor: Colors.amber.withAlpha(50),
            ),
            Padding(
              padding: EdgeInsets.all(4),
              child: Text((item.rating).toString() + ' ratings'),
            ),
          ],
        ),
      ),
    );
  }
}
