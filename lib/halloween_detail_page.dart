import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'dart:math';
import 'package:halloween/components/gallery_image.dart';

class HalloweenDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Color(0xff20242A),
          elevation: 0,
          title: Padding(
            padding: const EdgeInsets.only(bottom: 0),
            child: Row(
              children: <Widget>[
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Container(
                      width: 20,
                      height: 20,
                      child: SvgPicture.asset("assets/images/arrow_back.svg")),
                ),
                SizedBox(width: 16),
                Text(
                  'Halloween Carnival',
                  style: TextStyle(
                      fontFamily: 'Avenir',
                      fontWeight: FontWeight.bold,
                      fontSize: 19,
                      letterSpacing: -0.24),
                )
              ],
            ),
          ),
        ),
        body: Container(
          width: width,
          height: height,
          color: Color(0xff20242A),
          child: SingleChildScrollView(
            child: Padding(
              padding:
                  EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Carnival Images',
                      style: TextStyle(
                          color: Color(0xffffffff),
                          fontFamily: 'Avenir',
                          fontWeight: FontWeight.bold,
                          fontSize: 19,
                          letterSpacing: -0.24)),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      GalleryImage('assets/images/detail-1.png',
                          MediaQuery.of(context).size.width / 2 - 50, 180),
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
                                  'assets/images/detail-2.png',
                                  MediaQuery.of(context).size.width / 4 - 5,
                                  85),
                              SizedBox(width: 10),
                              GalleryImage('assets/images/detail-3.png',
                                  MediaQuery.of(context).size.width / 4 - 5, 85)
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Stack(
                            children: <Widget>[
                              GalleryImage('assets/images/detail-4.png',
                                  MediaQuery.of(context).size.width / 2, 85),
                              Container(
                                  color: Color(0xA6222222),
                                  width: MediaQuery.of(context).size.width / 2,
                                  height: 85),
                              Positioned.fill(
                                  child: Align(
                                      alignment: Alignment.center,
                                      child: Text('+5 More',
                                          style: TextStyle(
                                              color: Color(0xffffffff),
                                              fontFamily: 'Avenir',
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15,
                                              letterSpacing: -0.24)))),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  Text('The Night of 31st October,',
                      style: TextStyle(
                          color: Color(0xffffffff),
                          fontFamily: 'Avenir',
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          letterSpacing: -0.24)),
                  SizedBox(height: 5),
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text:
                            'The eve of All Saints\' Day, often celebrated by children dressing up in frightening masks... ',
                        style: TextStyle(
                            fontFamily: 'Avenir',
                            fontSize: 13,
                            height: 22 / 14)),
                    TextSpan(
                        text: 'Read More',
                        style: TextStyle(
                          fontFamily: 'Avenir',
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        )),
                  ])),
                  SizedBox(height: 40),
                  Container(
                    padding: EdgeInsets.all(8),
                    height: 100,
                    decoration: BoxDecoration(
                        color: Color(0xff35393F),
                        borderRadius: BorderRadius.all(Radius.circular(6))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Stack(
                          children: <Widget>[
                            Transform.translate(
                              offset: Offset(0, -20),
                              child: Transform.scale(
                                scale: 1.2,
                                child: Image.asset(
                                  "assets/images/hat.png",
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 10),
                        Flexible(
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Hosted by',
                                    style: TextStyle(
                                        color: Color(0xA6ffffff),
                                        fontFamily: 'Avenir',
                                        fontSize: 12,
                                        height: 22 / 14)),
                                Text('Grace Bradley',
                                    style: TextStyle(
                                      color: Color(0xffffffff),
                                      fontFamily: 'Avenir',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    )),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                    'Halloween is an annual holiday celebrat-ed each year on Oct 31',
                                    style: TextStyle(
                                        color: Color(0xA6ffffff),
                                        fontFamily: 'Avenir',
                                        fontSize: 12,
                                        height: 22 / 14)),
                              ]),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text('Your Contacts',
                      style: TextStyle(
                          color: Color(0xffffffff),
                          fontFamily: 'Avenir',
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          letterSpacing: -0.24)),
                  Container(
                    height: 200,
                    padding: EdgeInsets.only(
                      bottom: 10,
                    ),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      children: <Widget>[
                        Contact("Martin Taylor", true,
                            "assets/images/contact1.png"),
                        SizedBox(width: 20),
                        Contact("Timothy Moreno", false,
                            "assets/images/contact2.png"),
                        SizedBox(width: 20),
                        Contact(
                            "Alarn Smith", true, "assets/images/contact3.png"),
                        SizedBox(width: 20),
                        Contact(
                            "Jack Dorsey", true, "assets/images/contact4.png")
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}

class Contact extends StatefulWidget {
  final String _name;
  final bool _status;
  final String _imagePath;

  const Contact(this._name, this._status, this._imagePath);

  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  var _isReduced = false;
  var _showContents = true;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => animateContainer(),
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 30,
            child: AnimatedContainer(
              duration: Duration(milliseconds: 300),
              width: this._isReduced ? 75 : 195,
              curve: Curves.bounceOut,
              padding:
                  EdgeInsets.only(top: 20, bottom: 10, left: 16, right: 11),
              height: 160,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Color(0xff35393F)),
            ),
          ),
          AnimatedContainer(
            height: 200,
            duration: Duration(milliseconds: 300),
            curve: Curves.bounceOut,
            width: this._isReduced ? 75 : 195,
            padding: EdgeInsets.only(top: 20, bottom: 10, left: 16, right: 11),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: !this._isReduced
                        ? CrossAxisAlignment.start
                        : CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(
                        width: 45,
                        height: 45,
                        child: ClipRRect(
                            borderRadius: new BorderRadius.circular(8.0),
                            child: Image.asset(
                              this.widget._imagePath,
                              fit: BoxFit.cover,
                            )),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Visibility(
                        visible: this._showContents,
                        child: Text(this.widget._name,
                            style: TextStyle(
                                color: Color(0xffffffff),
                                fontFamily: 'Avenir',
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                letterSpacing: -0.24)),
                      ),
                      Visibility(
                        visible: this._isReduced,
                        child: Expanded(
                          child: RotatedBox(
                            quarterTurns: -1,
                            child: Text(this.widget._name,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color(0xffffffff),
                                    fontFamily: 'Avenir',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    letterSpacing: -0.24)),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Visibility(
                        visible: this._showContents,
                        child: Text('Status',
                            style: TextStyle(
                                color: Color(0xA6ffffff),
                                fontFamily: 'Avenir',
                                fontSize: 12,
                                height: 22 / 14)),
                      ),
                      SizedBox(
                        height: this._showContents ? 5 : 0,
                      ),
                      Visibility(
                        visible: this._showContents,
                        child: Text('Going to carnival',
                            style: TextStyle(
                              color: Color(0xffffffff),
                              fontFamily: 'Avenir',
                              fontSize: 14,
                            )),
                      ),
                      SizedBox(
                        height: this._showContents ? 10 : 0,
                      ),
                      Visibility(
                        visible: this._showContents,
                        child: Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Container(
                                  width: 30,
                                  height: 30,
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                      color: Color(0xff20242A),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(8))),
                                  child: SvgPicture.asset(
                                      "assets/images/phone.svg")),
                              SizedBox(width: 10),
                              Container(
                                  width: 30,
                                  height: 30,
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                      color: Color(0xff20242A),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(8))),
                                  child: SvgPicture.asset(
                                      "assets/images/message.svg")),
                              SizedBox(width: 10),
                              Container(
                                  width: 30,
                                  height: 30,
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                      color: Color(0xff20242A),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(8))),
                                  child: SvgPicture.asset(
                                      "assets/images/facebook.svg"))
                            ],
                          ),
                        ),
                      ),
                      Visibility(
                        visible: this._isReduced,
                        child: Container(
                            width: 20,
                            height: 20,
                            padding: EdgeInsets.only(top: 5),
                            margin: EdgeInsets.only(top: 20),
                            child: this.widget._status
                                ? SvgPicture.asset(
                                    "assets/images/green_check.svg")
                                : SvgPicture.asset(
                                    "assets/images/red_check.svg")),
                      )
                    ],
                  ),
                ),
                SizedBox(width: 10),
                Visibility(
                  visible: !this._isReduced,
                  child: Container(
                      width: 20,
                      height: 20,
                      padding: EdgeInsets.only(top: 5),
                      margin: EdgeInsets.only(top: 20),
                      child: this.widget._status
                          ? SvgPicture.asset("assets/images/green_check.svg")
                          : SvgPicture.asset("assets/images/red_check.svg")),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  animateContainer() {
    if (this._isReduced == true) {
      setState(() {
        this._isReduced = !this._isReduced;
      });
      Future.delayed(const Duration(milliseconds: 250), () {
        setState(() {
          this._showContents = true;
        });
      });
    } else {
      this._showContents = false;
      Future.delayed(const Duration(milliseconds: 2), () {
        setState(() {
          this._isReduced = !this._isReduced;
        });
      });
    }
  }
}
