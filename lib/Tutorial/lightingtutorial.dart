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

class DataModel{
  String title;
  String image;
  String description;
  bool expended;

  DataModel({this.title, this.image, this.description, this.expended = false});

}

class _LightingStates extends State<LightingState> {
  List<String> _locations = ['All CAtegories (VVIP)']; // Option 2
  String _selectedLocation; // Option 2

  int _current = 0;
  List<String> imageList = [
    'assets/images/banner_best_seller_mobile.jpg',
    'assets/images/banner_dc_home_design_mobile.jpg',
    'assets/images/banner_top_rated_mobile.jpg'
  ];

  List<DataModel> _dataModel = [
    DataModel(
      title: 'LED',
      description: 'Eyeball\nDownlight',
      image: 'assets/images/eyeball.png',
    ),
    DataModel(
      title: 'LED',
      description: 'Eyeball\nDownlight',
      image: 'assets/images/officelamp.jpg',
    ),

    DataModel(
      title: 'LED',
      description: 'Eyeball\nDownlight',
      image: 'assets/images/eyeball.png',
    ),
    DataModel(
      title: 'LED',
      description: 'Eyeball\nDownlight',
      image: 'assets/images/officelamp.jpg',
    ),   DataModel(
      title: 'LED',
      description: 'Eyeball\nDownlight',
      image: 'assets/images/eyeball.png',
    ),
    DataModel(
      title: 'LED',
      description: 'Eyeball\nDownlight',
      image: 'assets/images/officelamp.jpg',
    ),

  ];

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
            Text(item.title, textAlign: TextAlign.center,)
          ],
        ),
      );
    }

    Widget getItem(DataModel item) {
      return Container(
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery
                  .of(context)
                  .size
                  .height * 0.08,
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
            Text(item.description, textAlign: TextAlign.center,),
          ],
        ),
      );
    }

    Widget getAnimateContainer(DataModel item) {

      if(item.expended){
        return getItem(item);
      }else{
        return getImage(item);
      }
//      switch (selectedWidgetMarker) {
//        case WidgetMarker.inn:
//          return getImage(item);
//        case WidgetMarker.out:
//          return getItem(item);
//      }
//      return getImage(item);
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
            width: MediaQuery
                .of(context)
                .size
                .width,
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
          children: [
          ],
        ),
      ),
      body: Column(
        children: <Widget>[

//          Container(
//            color: Colors.black,
//            child: Column(children: <Widget>[
//              SizedBox(
//                height: MediaQuery
//                    .of(context)
//                    .size
//                    .height * 0.02,
//              ),
//              Row(
//                children: <Widget>[
//                  SizedBox(
//                    width: 10,
//                  ),
//                  Container(
//                    width: MediaQuery
//                        .of(context)
//                        .size
//                        .width * 0.8,
//                    height: MediaQuery
//                        .of(context)
//                        .size
//                        .height * 0.05,
//
//                    //color: Colors.white,
//                    decoration: BoxDecoration(
//                        borderRadius: BorderRadius.circular(5),
//                        color: Colors.white),
//                    child: Row(
//                      children: <Widget>[
//                        Container(
//                          padding: EdgeInsets.only(left: 10),
//                          width: MediaQuery
//                              .of(context)
//                              .size
//                              .width * 0.7,
//                          child: TextField(),
//                        ),
//                        Container(
//                          width: 2,
//                          color: Color(0xfffbcc34),
//                        ),
//                        Container(
//                          width: 30,
//                          padding: EdgeInsets.fromLTRB(
//                            8,
//                            8,
//                            8,
//                            8,
//                          ),
//                          child: Image.asset(
//                            'assets/images/search.png',
//                            fit: BoxFit.fitWidth,
//                          ),
//                        )
//                      ],
//                    ),
//                  ),
//                  SizedBox(
//                    width: 2,
//                  ),
//                  Container(
//                    width: 30,
//                    padding: EdgeInsets.fromLTRB(
//                      8,
//                      8,
//                      8,
//                      8,
//                    ),
//                    child: Image.asset(
//                      'assets/images/camera.png',
//                      fit: BoxFit.fitWidth,
//                    ),
//                  ),
//                  Container(
//                    width: 30,
//                    padding: EdgeInsets.fromLTRB(
//                      8,
//                      8,
//                      8,
//                      8,
//                    ),
//                    child: Image.asset(
//                      'assets/images/mike.png',
//                      fit: BoxFit.fitWidth,
//                    ),
//                  ),
//                ],
//              ),
//              SizedBox(
//                height: MediaQuery
//                    .of(context)
//                    .size
//                    .height * 0.01,
//              ),
//              Container(
//                height: 2,
//                color: Color(0xffD4AF37),
//              ),
//              Container(
//                height: MediaQuery
//                    .of(context)
//                    .size
//                    .height * 0.78,
//                color: Colors.white,
//                child: MaterialButton(
//                  onPressed: () {
//                    setState(() {
//                      selectedWidgetMarker = WidgetMarker.inn;
//                    });
//                  },
//                  child: SingleChildScrollView(
//                    child: Container(
//                      color: Colors.white,
//                      child: Column(
//                        children: <Widget>[
//                          SizedBox(
//                            height: MediaQuery
//                                .of(context)
//                                .size
//                                .height * 0.02,
//                          ),
//                          Container(
//                            padding: EdgeInsets.only(left: 20),
//                            width: MediaQuery
//                                .of(context)
//                                .size
//                                .width,
//                            child: Text(
//                              'Lighting',
//                              textAlign: TextAlign.left,
//                              style: TextStyle(
//                                fontSize: 30,
//                                color: Colors.grey,
//                              ),
//                            ),
//                          ),
//                          SizedBox(
//                            height: MediaQuery
//                                .of(context)
//                                .size
//                                .height * 0.02,
//                          ),
//                          Container(
//                            padding: EdgeInsets.only(left: 20),
//                            width: MediaQuery
//                                .of(context)
//                                .size
//                                .width,
//                            child: Text(
//                              'Featured Categories',
//                              style: TextStyle(
//                                fontSize: 25,
//                                color: Colors.black,
//                              ),
//                            ),
//                          ),
//                          SizedBox(
//                            height: MediaQuery
//                                .of(context)
//                                .size
//                                .height * 0.02,
//                          ),
//                          Padding(
//                            padding: EdgeInsets.only(left: 10, right: 10),
//                            child: Container(
//                              color: Colors.grey,
//                              height: 1,
//                            ),
//                          ),
//                          SizedBox(
//                            height: MediaQuery
//                                .of(context)
//                                .size
//                                .height * 0.05,
//                          ),
//
//
//
//
//
////                            Row(
////                              mainAxisAlignment: MainAxisAlignment.center,
////                              children: <Widget>[
////                                Column(
////                                  mainAxisAlignment: MainAxisAlignment.center,
////                                  children: <Widget>[
////                                    Container(
//////                                    duration: Duration(seconds: 30),
//////                                    curve: Curves.bounceInOut,
////                                      child: MaterialButton(
////                                        child: Container(
////                                          width: MediaQuery
////                                              .of(context)
////                                              .size
////                                              .height *
////                                              0.2,
////                                          height: MediaQuery
////                                              .of(context)
////                                              .size
////                                              .height *
////                                              0.25,
////                                          decoration: BoxDecoration(
////                                              borderRadius:
////                                              BorderRadius.circular(5),
////                                              border: Border.all(
////                                                color: Colors.black,
////                                              )),
////                                          child: getAnimateContainer('assets/images/eyeball.png'),
////                                        ),
////                                        onPressed: () {
////                                          setState(() {
////                                            selectedWidgetMarker =
////                                                WidgetMarker.out;
////                                          });
////                                        },
////                                      ),
////                                    ),
////
////                                  ],
////                                ),
////                                SizedBox(
////                                  width:
////                                  MediaQuery
////                                      .of(context)
////                                      .size
////                                      .width * 0.05,
////                                ),
////                                Column(
////                                  mainAxisAlignment: MainAxisAlignment.center,
////                                  children: <Widget>[
////                                    Container(
//////                                    duration: Duration(seconds: 30),
//////                                    curve: Curves.bounceInOut,
////                                      child: MaterialButton(
////                                        child: Container(
////                                          width: MediaQuery
////                                              .of(context)
////                                              .size
////                                              .height *
////                                              0.2,
////                                          height: MediaQuery
////                                              .of(context)
////                                              .size
////                                              .height *
////                                              0.25,
////                                          decoration: BoxDecoration(
////                                              borderRadius:
////                                              BorderRadius.circular(5),
////                                              border: Border.all(
////                                                color: Colors.black,
////                                              )),
////                                          child: getAnimateContainer('assets/images/officelamp.jpg'),
////                                        ),
////                                        onPressed: () {
////                                          setState(() {
////                                            selectedWidgetMarker =
////                                                WidgetMarker.out;
////                                          });
////                                        },
////                                      ),
////                                    ),
////
////                                  ],
////                                ),
////                              ],
////                            ),
////                            SizedBox(
////                              height: MediaQuery
////                                  .of(context)
////                                  .size
////                                  .height * 0.05,
////                            ),
////                            Row(
////                              mainAxisAlignment: MainAxisAlignment.center,
////                              children: <Widget>[
////                                Column(
////                                  mainAxisAlignment: MainAxisAlignment.center,
////                                  children: <Widget>[
////                                    Container(
////                                      width:
////                                      MediaQuery
////                                          .of(context)
////                                          .size
////                                          .height *
////                                          0.2,
////                                      height:
////                                      MediaQuery
////                                          .of(context)
////                                          .size
////                                          .height *
////                                          0.2,
////                                      decoration: BoxDecoration(
////                                          borderRadius:
////                                          BorderRadius.circular(5),
////                                          border: Border.all(
////                                            color: Colors.black,
////                                          )),
////                                      child: Image.asset(
////                                          'assets/images/lampexample.png'),
////                                    ),
////                                    SizedBox(
////                                      height: 5,
////                                    ),
////                                    Text('LED')
////                                  ],
////                                ),
////                                SizedBox(
////                                  width:
////                                  MediaQuery
////                                      .of(context)
////                                      .size
////                                      .width * 0.1,
////                                ),
////                                Column(
////                                  mainAxisAlignment: MainAxisAlignment.center,
////                                  children: <Widget>[
////                                    Container(
////                                      width:
////                                      MediaQuery
////                                          .of(context)
////                                          .size
////                                          .height *
////                                          0.2,
////                                      height:
////                                      MediaQuery
////                                          .of(context)
////                                          .size
////                                          .height *
////                                          0.2,
////                                      decoration: BoxDecoration(
////                                          borderRadius:
////                                          BorderRadius.circular(5),
////                                          border: Border.all(
////                                            color: Colors.black,
////                                          )),
////                                      child: Image.asset(
////                                          'assets/images/lampexample.png'),
////                                    ),
////                                    SizedBox(
////                                      height: 5,
////                                    ),
////                                    Text('LED')
////                                  ],
////                                ),
////                              ],
////                            ),
////                            SizedBox(
////                              height: MediaQuery
////                                  .of(context)
////                                  .size
////                                  .height * 0.05,
////                            ),
////                            Row(
////                              mainAxisAlignment: MainAxisAlignment.center,
////                              children: <Widget>[
////                                Column(
////                                  mainAxisAlignment: MainAxisAlignment.center,
////                                  children: <Widget>[
////                                    Container(
////                                      width:
////                                      MediaQuery
////                                          .of(context)
////                                          .size
////                                          .height *
////                                          0.2,
////                                      height:
////                                      MediaQuery
////                                          .of(context)
////                                          .size
////                                          .height *
////                                          0.2,
////                                      decoration: BoxDecoration(
////                                          borderRadius:
////                                          BorderRadius.circular(5),
////                                          border: Border.all(
////                                            color: Colors.black,
////                                          )),
////                                      child: Image.asset(
////                                          'assets/images/lampexample.png'),
////                                    ),
////                                    SizedBox(
////                                      height: 5,
////                                    ),
////                                    Text('LED')
////                                  ],
////                                ),
////                                SizedBox(
////                                  width:
////                                  MediaQuery
////                                      .of(context)
////                                      .size
////                                      .width * 0.1,
////                                ),
////                                Column(
////                                  mainAxisAlignment: MainAxisAlignment.center,
////                                  children: <Widget>[
////                                    Container(
////                                      width:
////                                      MediaQuery
////                                          .of(context)
////                                          .size
////                                          .height *
////                                          0.2,
////                                      height:
////                                      MediaQuery
////                                          .of(context)
////                                          .size
////                                          .height *
////                                          0.2,
////                                      decoration: BoxDecoration(
////                                          borderRadius:
////                                          BorderRadius.circular(5),
////                                          border: Border.all(
////                                            color: Colors.black,
////                                          )),
////                                      child: Image.asset(
////                                          'assets/images/lampexample.png'),
////                                    ),
////                                    SizedBox(
////                                      height: 5,
////                                    ),
////                                    Text('LED')
////                                  ],
////                                ),
////                              ],
////                            ),
//                        ],
//                      ),
//                    ),
//                  ),
//                ),
//              ),
//            ]),
//          ),


        Align(
          alignment: Alignment.centerLeft,
          child: Column(
            children: <Widget>[
              Container(
                //padding: EdgeInsets.only(left: 20),
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
                height: 10,
              ),
              Container(
                //padding: EdgeInsets.only(left: 20),
                child: Text(
                  'Featured Categories',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
          Divider(
            height: 10,
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2
              ),
              itemCount: _dataModel.length,
              itemBuilder: (context, index){

                DataModel _item = _dataModel.elementAt(index);

                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    child: getImages(_item),
                    onTap: (){
                      setState(() {

                        _item.expended = !_item.expended;

                      });
                    }
                    ,
                  ),
                );

              },

            ),
          ),
        ],
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
                Text(item.description,
                textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12
                  ),
                ),
              ],
            ),
          )

        ],
      ),
    );
  }
}
