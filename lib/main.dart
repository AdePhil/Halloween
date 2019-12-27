import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:halloween/components/gallery_image.dart';

import 'halloween_detail_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Color(0xff35393F),
          title: Padding(
            padding: const EdgeInsets.only(bottom: 0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                    width: 25,
                    height: 25,
                    child: SvgPicture.asset("assets/images/four-circles.svg")),
                Expanded(
                  child: Container(
                      child: Image.asset("assets/images/logo-yellow.png")),
                ),
                Container(
                    width: 30,
                    height: 30,
                    child: SvgPicture.asset("assets/images/profile.svg")),
              ],
            ),
          ),
        ),
        body: Container(
          width: width,
          height: height,
          color: Color(0xff20242A),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                      top: 20, left: 20, right: 20, bottom: 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: 'Welcome to the Halloween World',
                              style: TextStyle(
                                  fontFamily: 'Avenir', fontSize: 16)),
                          TextSpan(text: '\n'),
                          TextSpan(
                              text: 'Spooky Kennedy,',
                              style: TextStyle(
                                  fontFamily: 'Crimson Pro',
                                  fontSize: 25,
                                  height: 1.5,
                                  fontWeight: FontWeight.w500))
                        ]),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                              width: 30,
                              height: 30,
                              child:
                                  SvgPicture.asset("assets/images/cloud.svg")),
                          SizedBox(width: 10),
                          Text('24  Cloudy | Thu. 10 Oct, 2019',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Avenir',
                                  fontSize: 16))
                        ],
                      ),
                      SizedBox(height: 20),
                      Text('Parties Near You',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Avenir',
                              fontSize: 19,
                              letterSpacing: -0.23,
                              fontWeight: FontWeight.bold)),
                      Container(
                        height: 340,
                        margin: EdgeInsets.only(top: 15),
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            HalloweenParty(
                                'The Halloween Carnival - 2k19',
                                'Friday',
                                'Oct',
                                '29',
                                '1-7pm',
                                'assets/images/party1.png',
                                'Jockey hollow, Burlington, NYC 01803'),
                            SizedBox(width: 20),
                            HalloweenParty(
                                'The Halloween Carnival - 2k19',
                                'Friday',
                                'Oct',
                                '29',
                                '1-7pm',
                                'assets/images/party2.png',
                                'Jockey hollow, Burlington, NYC 01803')
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(
                      top: 20, left: 20, right: 20, bottom: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Halloween Gallery',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Avenir',
                              fontSize: 19,
                              letterSpacing: -0.23,
                              fontWeight: FontWeight.bold)),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          GalleryImage('assets/images/flame.png',
                              MediaQuery.of(context).size.width / 2 - 50, 130),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  GalleryImage(
                                      'assets/images/cap.png',
                                      MediaQuery.of(context).size.width / 4 - 5,
                                      60),
                                  SizedBox(width: 10),
                                  GalleryImage(
                                      'assets/images/skull.png',
                                      MediaQuery.of(context).size.width / 4 - 5,
                                      60)
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              GalleryImage('assets/images/flame-man.png',
                                  MediaQuery.of(context).size.width / 2, 60),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

class HalloweenParty extends StatelessWidget {
  final String _name;
  final String _day;
  final String _date;
  final String _time;
  final String _imagePath;
  final String _location;
  final String _month;

  HalloweenParty(this._name, this._day, this._month, this._date, this._time,
      this._imagePath, this._location);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => HalloweenDetailsPage()));
      },
      child: Container(
        height: 280,
        width: 0.8 * MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Color(0xff35393F),
            borderRadius: BorderRadius.all(Radius.circular(8))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            ClipRRect(
              borderRadius: new BorderRadius.only(
                  topLeft: Radius.circular(8), topRight: Radius.circular(8)),
              child: Container(
                  height: 225,
                  child: Image.asset(
                    this._imagePath,
                    fit: BoxFit.fitHeight,
                  )),
            ),
            Padding(
              padding:
                  EdgeInsets.only(left: 10, top: 16, right: 10, bottom: 10),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(this._name,
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Avenir',
                                letterSpacing: 0.3,
                                fontSize: 14,
                                fontWeight: FontWeight.bold)),
                        SizedBox(height: 10),
                        Row(children: <Widget>[
                          Container(
                              margin: EdgeInsets.only(right: 5),
                              width: 15,
                              height: 15,
                              child: SvgPicture.asset(
                                  "assets/images/clock-icon.svg")),
                          RichText(
                              text: TextSpan(
                            children: [
                              TextSpan(text: this._day),
                              TextSpan(text: ' '),
                              TextSpan(text: this._month),
                              TextSpan(text: ' '),
                              TextSpan(text: this._date),
                              TextSpan(text: ' '),
                              TextSpan(text: this._time),
                            ],
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Avenir',
                              fontSize: 11,
                            ),
                          ))
                        ]),
                        SizedBox(height: 10),
                        Row(
                          children: <Widget>[
                            Container(
                                margin: EdgeInsets.only(right: 5),
                                width: 15,
                                height: 15,
                                child: SvgPicture.asset(
                                    "assets/images/location-icon.svg")),
                            Text(
                              this._location,
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Avenir',
                                fontSize: 11,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          border:
                              Border.all(color: Color(0xffE8E8E8), width: .5)),
                      child: Center(
                        child: RichText(
                            text: TextSpan(children: [
                          TextSpan(
                            text: this._month,
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Avenir',
                              fontSize: 12,
                            ),
                          ),
                          TextSpan(text: '\n'),
                          TextSpan(
                            text: this._date,
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Avenir',
                                fontSize: 18,
                                height: 1.5,
                                fontWeight: FontWeight.bold),
                          ),
                        ])),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
