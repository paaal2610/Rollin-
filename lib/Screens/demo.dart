import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DemoScreen extends StatelessWidget {
  var c1, c2;
  DemoScreen({this.c1, this.c2});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Center(
        child: Text('$c1 $c2'),
      ),
    ));
  }
}
