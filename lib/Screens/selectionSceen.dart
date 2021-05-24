import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rollin/Screens/diceScreen.dart';

import '../main.dart';
import 'demo.dart';

class selectionpage extends StatefulWidget {
  const selectionpage({Key key}) : super(key: key);

  @override
  _selectionpageState createState() => _selectionpageState();
}

class _selectionpageState extends State<selectionpage> {
  int P1character = 0;
  int P2character = 0;
  String _Player1 = " ";
  String _Player2 = " ";
  var _color1 = Colors.transparent;
  var _color2 = Colors.transparent;
  var _color3 = Colors.transparent;
  var _color4 = Colors.transparent;
  var _color5 = Colors.transparent;
  var _color6 = Colors.transparent;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    // CHECK_MARK
    var screenSize = MediaQuery.of(context).size;
    var width = screenSize.width;
    var height = screenSize.height;

    return Scaffold(
      backgroundColor: Colors.purple[600],
      body: Container(
        child: Column(
          children: [
            SizedBox(
              //CHECK_MARK
              height: screenHeight(context, dividedBy: 25),
              width: screenWidth(context, dividedBy: 1),
            ),
            Expanded(
              flex: 10,
              child: Container(
                height: screenHeight(context, dividedBy: 0.75),
                width: screenWidth(context, dividedBy: 0.95),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius:
                      const BorderRadius.all(const Radius.circular(40)),
                  color: Colors.purple[400],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: screenHeight(context, dividedBy: 30),
                      width: screenWidth(context, dividedBy: 1),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            AnimatedContainer(
                              color: _color1,
                              duration: Duration(microseconds: 500),
                              padding: EdgeInsets.all(5),
                              height: screenHeight(context, dividedBy: 4),
                              width: screenWidth(context, dividedBy: 3.25),
                              child: TextButton(
                                onPressed: () {
                                  if (P1character == 0 && P2character == 0) {
                                    P1character = 1;

                                    setState(() {
                                      _color1 = Colors.green[400];
                                    });
                                  } else if (!(P1character == 0) &&
                                      P2character == 0) {
                                    P2character = 1;

                                    setState(() {
                                      _color1 = Colors.green[400];
                                    });
                                  } else if (!(P1character == 0) &&
                                      !(P2character == 0)) {}

                                  print("$P1character  $P2character");
                                },
                                child: Image(
                                  image: AssetImage('images/Monica.png'),
                                ),
                              ),
                            ),
                            Text(
                              'Monica',
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            AnimatedContainer(
                              color: _color2,
                              duration: Duration(microseconds: 500),
                              padding: EdgeInsets.all(5),
                              height: screenHeight(context, dividedBy: 4),
                              width: screenWidth(context, dividedBy: 3.25),
                              child: TextButton(
                                onPressed: () {
                                  if (P1character == 0 && P2character == 0) {
                                    P1character = 2;

                                    setState(() {
                                      _color2 = Colors.green[400];
                                    });
                                  } else if (!(P1character == 0) &&
                                      P2character == 0) {
                                    P2character = 2;

                                    setState(() {
                                      _color2 = Colors.green[400];
                                    });
                                  } else if (!(P1character == 0) &&
                                      !(P2character == 0)) {}

                                  print("$P1character  $P2character");
                                },
                                child: Image(
                                  image: AssetImage('images/Chandler.png'),
                                ),
                              ),
                            ),
                            Text('Chandler'),
                          ],
                        ),
                        Column(
                          children: [
                            AnimatedContainer(
                              color: _color3,
                              duration: Duration(microseconds: 500),
                              padding: EdgeInsets.all(5),
                              height: screenHeight(context, dividedBy: 4),
                              width: screenWidth(context, dividedBy: 3.25),
                              child: TextButton(
                                onPressed: () {
                                  if (P1character == 0 && P2character == 0) {
                                    P1character = 3;

                                    setState(() {
                                      _color3 = Colors.green[400];
                                    });
                                  } else if (!(P1character == 0) &&
                                      P2character == 0) {
                                    P2character = 3;

                                    setState(() {
                                      _color3 = Colors.green[400];
                                    });
                                  } else if (!(P1character == 0) &&
                                      !(P2character == 0)) {}

                                  print("$P1character  $P2character");
                                },
                                child: Image(
                                  image: AssetImage('images/Phoebe.png'),
                                ),
                              ),
                            ),
                            Text('Phoebe'),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: screenHeight(context, dividedBy: 15),
                      width: screenWidth(context, dividedBy: 1),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            AnimatedContainer(
                              color: _color4,
                              duration: Duration(microseconds: 500),
                              padding: EdgeInsets.all(5),
                              height: screenHeight(context, dividedBy: 4),
                              width: screenWidth(context, dividedBy: 3.25),
                              child: TextButton(
                                onPressed: () {
                                  if (P1character == 0 && P2character == 0) {
                                    P1character = 4;

                                    setState(() {
                                      _color4 = Colors.green[400];
                                    });
                                  } else if (!(P1character == 0) &&
                                      P2character == 0) {
                                    P2character = 4;

                                    setState(() {
                                      _color4 = Colors.green[400];
                                    });
                                  } else if (!(P1character == 0) &&
                                      !(P2character == 0)) {}

                                  print("$P1character  $P2character");
                                },
                                child: Image(
                                  image: AssetImage('images/Ross.png'),
                                ),
                              ),
                            ),
                            Text('Ross'),
                          ],
                        ),
                        Column(
                          children: [
                            AnimatedContainer(
                              color: _color5,
                              duration: Duration(microseconds: 500),
                              padding: EdgeInsets.all(5),
                              height: screenHeight(context, dividedBy: 4),
                              width: screenWidth(context, dividedBy: 3.25),
                              child: TextButton(
                                onPressed: () {
                                  if (P1character == 0 && P2character == 0) {
                                    P1character = 5;

                                    setState(() {
                                      _color5 = Colors.green[400];
                                    });
                                  } else if (!(P1character == 0) &&
                                      P2character == 0) {
                                    P2character = 5;

                                    setState(() {
                                      _color5 = Colors.green[400];
                                    });
                                  } else if (!(P1character == 0) &&
                                      !(P2character == 0)) {}

                                  print("$P1character  $P2character");
                                },
                                child: Image(
                                  image: AssetImage('images/Rachel.png'),
                                ),
                              ),
                            ),
                            Text('Rachel'),
                          ],
                        ),
                        Column(
                          children: [
                            AnimatedContainer(
                              color: _color6,
                              duration: Duration(microseconds: 500),
                              padding: EdgeInsets.all(5),
                              height: screenHeight(context, dividedBy: 4),
                              width: screenWidth(context, dividedBy: 3.25),
                              child: TextButton(
                                onPressed: () {
                                  if (P1character == 0 && P2character == 0) {
                                    P1character = 6;

                                    setState(() {
                                      _color6 = Colors.green[400];
                                    });
                                  } else if (!(P1character == 0) &&
                                      P2character == 0) {
                                    P2character = 6;

                                    setState(() {
                                      _color6 = Colors.green[400];
                                    });
                                  } else if (!(P1character == 0) &&
                                      !(P2character == 0)) {}

                                  print("$P1character  $P2character");
                                },
                                child: Image(
                                  image: AssetImage('images/Joey.png'),
                                ),
                              ),
                            ),
                            Text('Joey'),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: screenWidth(context, dividedBy: 20),
                    ),
                    Text(
                      'Select Characters',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      width: screenWidth(context, dividedBy: 1.7),
                    ),
                    FloatingActionButton(
                      onPressed: () {
                        if (P1character == 0 || P2character == 0) {
                          print('Please Select both characters');
                        } else {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  DicePage(c1: P1character, c2: P2character)));
                        }
                      },
                      backgroundColor: Colors.green[400],
                      elevation: 10,
                      child: Icon(
                        Icons.chevron_right,
                        color: Colors.white38,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
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
}
