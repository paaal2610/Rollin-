import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DicePage extends StatelessWidget {
  var c1, c2;
  DicePage({this.c1, this.c2});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    return Screen();
  }
}

class Screen extends StatefulWidget {
  const Screen({Key key}) : super(key: key);

  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  bool player1 = true;
  void changeturn() {
    setState(() {
      player1 = !player1;
    });
  }

  int dicenumber = 2;
  int player1score = 0;
  int player2score = 0;

  @override
  Widget build(BuildContext context) {
    if (player2score >= 20 || player1score >= 20) {
      setState(() {
        player1score = 0;
        player2score = 0;
      });
    }

    var screenSize = MediaQuery.of(context).size;
    var width = screenSize.width;
    var height = screenSize.height;

    return SafeArea(
      child: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 5,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          gradient: RadialGradient(
                            radius: 0.7,
                            colors: player1
                                ? [Color(0xFF9e9e9e), Color(0xff757575)]
                                : [Color(0xff616161), Color(0xff212121)],

                            // Colors.indigo[300] : Colors.indigo[800]
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: height * 0.1),
                                padding: EdgeInsets.symmetric(
                                    vertical: height * 0.02,
                                    horizontal: width * 0.04),
                                child: Text(
                                  '  Player 1  ',
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: height * 0.05),
                                ),
                                decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  color: player1
                                      ? Colors.lightBlue[600]
                                      : Colors.blue[800],
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.cyan[400],
                                      offset: Offset(1, 1),
                                      spreadRadius: 2,
                                      blurRadius: 3,
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 20, horizontal: 20),
                                child: Text(
                                  '$player1score',
                                  style: TextStyle(
                                    fontSize: height * 0.05,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 20, horizontal: 20),
                            child: player1
                                ? Text(
                                    '$dicenumber',
                                    style: TextStyle(
                                      fontSize: height * 0.05,
                                      decoration: TextDecoration.none,
                                    ),
                                  )
                                : Text(
                                    '--',
                                    style: TextStyle(
                                      fontSize: height * 0.05,
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: !player1
                                ? [Color(0xFF9e9e9e), Color(0xff757575)]
                                : [Color(0xff616161), Color(0xff212121)],
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: height * 0.1),
                                padding: EdgeInsets.symmetric(
                                    vertical: height * 0.02,
                                    horizontal: width * 0.04),
                                child: Text(
                                  ' Player 2 ',
                                  style: TextStyle(
                                    fontSize: height * 0.05,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  color: !player1
                                      ? Colors.lightBlue[600]
                                      : Colors.blue[800],
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.cyan[600],
                                      offset: Offset(1, 1),
                                      spreadRadius: 2,
                                      blurRadius: 3,
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 20, horizontal: 20),
                                child: Text(
                                  '$player2score',
                                  style: TextStyle(
                                    fontSize: height * 0.05,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 20, horizontal: 20),
                            child: !player1
                                ? Text(
                                    '$dicenumber',
                                    style: TextStyle(
                                      fontSize: height * 0.05,
                                      decoration: TextDecoration.none,
                                    ),
                                  )
                                : Text(
                                    '--',
                                    style: TextStyle(
                                      fontSize: height * 0.05,
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              width: 130,
              height: 130,
              child: FittedBox(
                fit: BoxFit.contain,
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      dicenumber = Random().nextInt(6) + 1;
                    });
                    if (dicenumber == 1) {
                      changeturn();
                    }
                  },
                  child: Image(
                    image: AssetImage('images/dice$dicenumber.png'),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              child: FloatingActionButton(
                child: Text('Accept Score'),
                onPressed: () {
                  if (dicenumber == 1) {
                    changeturn();
                  } else {
                    player1
                        ? player1score += dicenumber
                        : player2score += dicenumber;
                    changeturn();
                  }
                  setState(() {
                    dicenumber = 2;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Size screenSize(BuildContext context) {
  return MediaQuery.of(context).size;
}

double screenHeight(BuildContext context, {double dividedBy = 1}) {
  return screenSize(context).height / dividedBy;
}

double screenWidth(BuildContext context, {double dividedBy = 1}) {
  return screenSize(context).width / dividedBy;
}
