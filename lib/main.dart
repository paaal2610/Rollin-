import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: selectionpage(),
      ),
    ),
  );
}

class selectionpage extends StatefulWidget {
  const selectionpage({Key key}) : super(key: key);

  @override
  _selectionpageState createState() => _selectionpageState();
}

class _selectionpageState extends State<selectionpage> {
  int P1character = 0;
  int P2character = 0;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);

    var screenSize = MediaQuery.of(context).size;
    var width = screenSize.width;
    var height = screenSize.height;

    return Scaffold(
      backgroundColor: Colors.purple[600],
      body: Container(
        child: Column(
          children: [
            SizedBox(
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
                            Container(
                              padding: EdgeInsets.all(5),
                              height: screenHeight(context, dividedBy: 4),
                              width: screenWidth(context, dividedBy: 3.25),
                              child: FlatButton(
                                onPressed: () {
                                  if (P1character == 0 && P2character == 0) {
                                    P1character = 1;
                                  } else if (!(P1character == 0) &&
                                      P2character == 0) {
                                    P2character = 1;
                                  } else if (!(P1character == 0) &&
                                      !(P2character == 0)) {}
                                  print("$P1character  $P2character");
                                },
                                child: Image(
                                  image: AssetImage('images/Monica.png'),
                                ),
                              ),
                            ),
                            Text('Monica'),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(5),
                              height: screenHeight(context, dividedBy: 4),
                              width: screenWidth(context, dividedBy: 3.25),
                              child: FlatButton(
                                onPressed: () {
                                  if (P1character == 0 && P2character == 0) {
                                    P1character = 2;
                                  } else if (!(P1character == 0) &&
                                      P2character == 0) {
                                    P2character = 2;
                                  } else if (!(P1character == 0) &&
                                      !(P2character == 0)) {
                                    print("$P1character  $P2character");
                                  }
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
                            Container(
                              padding: EdgeInsets.all(5),
                              height: screenHeight(context, dividedBy: 4),
                              width: screenWidth(context, dividedBy: 3.25),
                              child: FlatButton(
                                onPressed: () {
                                  if (P1character == 0 && P2character == 0) {
                                    P1character = 3;
                                  } else if (!(P1character == 0) &&
                                      P2character == 0) {
                                    P2character = 3;
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
                            Container(
                              padding: EdgeInsets.all(5),
                              height: screenHeight(context, dividedBy: 4),
                              width: screenWidth(context, dividedBy: 3.25),
                              child: FlatButton(
                                onPressed: () {
                                  if (P1character == 0 && P2character == 0) {
                                    P1character = 4;
                                  } else if (!(P1character == 0) &&
                                      P2character == 0) {
                                    P2character = 4;
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
                            Container(
                              padding: EdgeInsets.all(5),
                              height: screenHeight(context, dividedBy: 4),
                              width: screenWidth(context, dividedBy: 3.25),
                              child: FlatButton(
                                onPressed: () {
                                  if (P1character == 0 && P2character == 0) {
                                    P1character = 5;
                                  } else if (!(P1character == 0) &&
                                      P2character == 0) {
                                    P2character = 5;
                                  } else if (!(P1character == 0) &&
                                      !(P2character == 0)) {
                                    print("$P1character  $P2character");
                                  }
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
                            Container(
                              padding: EdgeInsets.all(5),
                              height: screenHeight(context, dividedBy: 4),
                              width: screenWidth(context, dividedBy: 3.25),
                              child: FlatButton(
                                onPressed: () {
                                  if (P1character == 0 && P2character == 0) {
                                    P1character = 6;
                                  } else if (!(P1character == 0) &&
                                      P2character == 0) {
                                    P2character = 6;
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
                      onPressed: () {},
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

class DicePage extends StatelessWidget {
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
                                margin: EdgeInsets.only(top: 20),
                                padding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 10),
                                child: Text('  Player 1  '),
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
                                child: Text('$player1score'),
                              ),
                            ],
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 20, horizontal: 20),
                            child: player1 ? Text('$dicenumber') : Text('--'),
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
                                margin: EdgeInsets.only(top: 20),
                                padding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 10),
                                child: Text('Player 2'),
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
                                child: Text('$player2score'),
                              ),
                            ],
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 20, horizontal: 20),
                            child: !player1 ? Text('$dicenumber') : Text('--'),
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
                child: FlatButton(
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
