import 'package:bujishu1/home/customer/nav_drawer.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

void main() => runApp(ProductDetail());

class ProductDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProductHome(),
    );
  }
}

class LigthingDetail {
  String title;
  String image;
  String description;
  bool expended;
  String rank;
  double score;
  int rating;
  double customerScore;
  List<String> areaService;
  String commitment;

  LigthingDetail(
      {this.title,
      this.image,
      this.description,
      this.rank,
      this.score,
      this.rating,
      this.expended = false});
}

class ProductHome extends StatefulWidget {
  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductHome> {
  bool isButtonPressed = false;

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

  int _counter = 1;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    datas = ligthingData.where((i) => i.title == 'LED').toList();
    // TODO: implement build
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
                width: double.infinity,
                child: CustomScrollView(
                  slivers: <Widget>[
                    SliverList(
                      delegate: SliverChildListDelegate([
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            color: Colors.black,
                            width: double.infinity,
                            height: MediaQuery.of(context).size.height * 0.40,
//            padding: EdgeInsets.only(left: 50,right: 50),
                            child: Carousel(
                              boxFit: BoxFit.fitHeight,
                              images: [
                                AssetImage('assets/images/eyeball.png'),
                                AssetImage('assets/images/eyeball.png'),
                              ],

                              //animationCurve: Curves.fastOutSlowIn,
                              //animationDuration: Duration(milliseconds: 2000),
                              dotBgColor: Colors.white70,
                              indicatorBgPadding: 5.0,
                              //moveIndicatorFromBottom: -15,
                              autoplay: false,
                              dotSize: 4.0,
                              dotSpacing: 15.0,
                              dotColor: Color(0xfffbcc34),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          child: Text(
                            'Single Round Eyeball White Casing With GU 20001',
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Text(
                            'Sold By - Bujishu Sdn Bhd',
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            FlutterRatingBarIndicator(
                              rating: 0,
                              itemCount: 5,
                              itemSize: 15.0,
                              emptyColor: Colors.amber.withAlpha(50),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text('490 ratings')
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          child: Text(
                            'Fixed Price',
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Text(
                            'RM 120.00',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          child: Text(
                            'DC Customer Price',
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Text(
                            'RM 120.00',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Color(0xff94C507)),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 1,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Eyeball are the recessed lights that provide a slim, unobtrusive style for quality, controlled lighting in kitchens, living rooms, galleries and more.',
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Color Temperature',
                          style: TextStyle(color: Color(0xff717477)),
                          //   side: BorderSide( color: Color(0xff717477),),
                          textAlign: TextAlign.center,
                        ),
                        Center(
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.9,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                RaisedButton(
                                    color: Colors.white,
                                    onPressed: () {
                                      setState(() {});
                                    },
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      side: BorderSide(color: Colors.grey),
                                    ),
                                    child: Text(
                                      'Cool White',
                                      style: TextStyle(color: Colors.grey),
                                    )),
                                SizedBox(
                                  width: 2,
                                ),
                                RaisedButton(
                                    color: Colors.white,
                                    onPressed: () {
                                      setState(() {});
                                    },
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      side: BorderSide(color: Colors.grey),
                                    ),
                                    child: Text(
                                      'Warm White',
                                      style: TextStyle(color: Colors.grey),
                                    )),
                                SizedBox(
                                  width: 2,
                                ),
                                RaisedButton(
                                  color: Colors.white,
                                  onPressed: () {
                                    setState(() {});
                                  },
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    side: BorderSide(color: Colors.grey),
                                  ),
                                  child: Text(
                                    'Yellow',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text('Quantity',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.grey)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            MaterialButton(
                              child: Container(
                                child: Icon(Icons.remove),
                              ),
                              onPressed: (){
                                setState(() {
                                  _decrementCounter();
                                });
                              },
                            ),
                            Container(
                                width: 60,
                                height: 20,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                  color: Colors.black,
                                )),
                                child: Text(_counter.toString())),
                            MaterialButton(
                              child: Container(
                                child: Icon(Icons.add),
                              ),
                              onPressed: (){
                                setState(() {
                                  _incrementCounter();
                                });
                              },
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.8,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Expanded(
                                  child: RaisedButton(
                                      color: Colors.yellow,
                                      onPressed: () {
                                        setState(() {});
                                      },
                                      child: Text('Buy Now')),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Expanded(
                                  child: RaisedButton(
                                      color: Colors.yellow,
                                      onPressed: () {
                                        setState(() {});
                                      },
                                      child: Text('Add To Cart')),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          color: Color(0xffD6D7D8),
                          height: 2
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Product Details', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: Container(
                            padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Expanded(
                                  child: RaisedButton(
                                      color: Colors.white,
                                      onPressed: () {
                                        setState(() {});
                                      },
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        side: BorderSide( color: Color(0xff717477),),
                                      ),
                                      child: Text(
                                        'Description',
                                        style: TextStyle(color: Colors.black),
                                      )),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: RaisedButton(
                                      color: Colors.white,
                                      onPressed: () {
                                        setState(() {});
                                      },
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        side: BorderSide( color: Color(0xff717477),),
                                      ),
                                      child: Text(
                                        'Material',
                                        style: TextStyle(color: Colors.black),
                                      )),
                                ),
                              ],
                            ),
                          ),
                        ),

                        SizedBox(height: 10,),

                        Center(
                          child: Container(
                            padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Expanded(
                                  child: RaisedButton(
                                      color: Colors.white,
                                      onPressed: () {
                                        setState(() {});
                                      },
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        side: BorderSide( color: Color(0xff717477),),
                                      ),
                                      child: Text(
                                        'Size',
                                        style: TextStyle(color: Colors.black),
                                      )),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: RaisedButton(
                                      color: Colors.white,
                                      onPressed: () {
                                        setState(() {});
                                      },
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        side: BorderSide( color: Color(0xff717477),),
                                      ),
                                      child: Text(
                                        'Consistency',
                                        style: TextStyle(color: Colors.black),
                                      )),
                                ),
                              ],
                            ),
                          ),
                        ),

                        SizedBox(height: 10,),

                        Center(
                          child: Container(
                            padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Expanded(
                                  child: RaisedButton(
                                      color: Colors.white,
                                      onPressed: () {
                                        setState(() {});
                                      },
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        side: BorderSide( color: Color(0xff717477),),
                                      ),
                                      child: Text(
                                        'Package',
                                        style: TextStyle(color: Colors.black),
                                      )),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: RaisedButton(
                                      color: Colors.white,
                                      onPressed: () {
                                        setState(() {});
                                      },
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        side: BorderSide( color: Color(0xff717477),),
                                      ),
                                      child: Text(
                                        'Availability',
                                        style: TextStyle(color: Colors.black),
                                      )),
                                ),
                              ],
                            ),
                          ),
                        ),

                        SizedBox(height: 10,),


                        Container(
                          height: 2,
                          color: Color(0xffD6D7D8),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Similar Items', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ]),
                    ),
                    SliverGrid(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2, childAspectRatio: 0.8),
                      delegate: SliverChildListDelegate(datas.map((data) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 500,
                            child: getImages(data),
                          ),
                        );
                      }).toList()),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 0,
              child: Container(
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
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              'About Us',
                              style: TextStyle(
                                  color: Color(0xfffbcc34), fontSize: 5),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Expanded(
                            child: Text(
                              'Partnership',
                              style: TextStyle(
                                  color: Color(0xfffbcc34), fontSize: 5),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Expanded(
                            child: Text(
                              'Sign In',
                              style: TextStyle(
                                  color: Color(0xfffbcc34), fontSize: 5),
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
                                  color: Color(0xfffbcc34), fontSize: 5),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Expanded(
                            child: Text(
                              'Privacy Policy',
                              style: TextStyle(
                                  color: Color(0xfffbcc34), fontSize: 5),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Expanded(
                            child: Text(
                              'View Cart',
                              style: TextStyle(
                                  color: Color(0xfffbcc34), fontSize: 5),
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
                                  color: Color(0xfffbcc34), fontSize: 5),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Expanded(
                            child: Text(
                              'Contact Us',
                              style: TextStyle(
                                  color: Color(0xfffbcc34), fontSize: 5),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Expanded(
                            child: Text(
                              'My Wishlist',
                              style: TextStyle(
                                  color: Color(0xfffbcc34), fontSize: 5),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getImages(LigthingDetail item) {
    return Container(
      color: Color(0xffF0F1F1),
      child: Banner(
        message: item.rank,
        textStyle: TextStyle(color: Colors.black, fontSize: 10),
        location: BannerLocation.topEnd,
        color: dColor(item.rank),
        child: MaterialButton(
          child: Column(
            children: <Widget>[
              Container(
                height: 100,
                child: FittedBox(
                  child: Image.asset(item.image),
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(4),
                child: Text(
                  item.description,
                  style: TextStyle(fontSize: 12),
                ),
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
          onPressed: () {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
//                title: Text("Alert Dialog"),
                    backgroundColor: Colors.black,

                    content: Container(
                        child: Column(
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width * 0.69,
                          child: Text(
                            'Panels Selling - ' + item.title,
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.69,
                          child: SingleChildScrollView(
                            child: Column(
                              children: <Widget>[
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.67,
                                  padding: EdgeInsets.all(10),
                                  color: Colors.white,
                                  child: Column(
                                    children: <Widget>[
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Text('Bujishu Sdn Bhd'),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          '120.00',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Text('Panel Rating'),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: FlutterRatingBarIndicator(
                                          rating: 5,
                                          itemCount: 5,
                                          itemSize: 10.0,
                                          emptyColor:
                                              Colors.amber.withAlpha(50),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Text('Customer Rating'),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: FlutterRatingBarIndicator(
                                          rating: 5,
                                          itemCount: 5,
                                          itemSize: 10.0,
                                          emptyColor:
                                              Colors.amber.withAlpha(50),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Text('Area of Service'),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          'KL, Seremban',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      SizedBox(height: 8),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Text('Commitment'),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                            'With 15 years experience in manufacturing and serving our customers,' +
                                                'we can guarantee that this product will meet your needs and 100% satisfy you'),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.67,
                                  padding: EdgeInsets.all(10),
                                  color: Colors.white,
                                  child: Column(
                                    children: <Widget>[
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Text('Bujishu Sdn Bhd'),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          '120.00',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Text('Panel Rating'),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: FlutterRatingBarIndicator(
                                          rating: 5,
                                          itemCount: 5,
                                          itemSize: 10.0,
                                          emptyColor:
                                              Colors.amber.withAlpha(50),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Text('Customer Rating'),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: FlutterRatingBarIndicator(
                                          rating: 5,
                                          itemCount: 5,
                                          itemSize: 10.0,
                                          emptyColor:
                                              Colors.amber.withAlpha(50),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Text('Area of Service'),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          'KL, Seremban',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      SizedBox(height: 8),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Text('Commitment'),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                            'With 15 years experience in manufacturing and serving our customers,' +
                                                'we can guarantee that this product will meet your needs and 100% satisfy you'),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )),
                  );
                });
          },
        ),
      ),
    );
  }
}
