import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            backgroundColor: Colors.blue[800],
            title: Text('Ask Me Anything'),
            centerTitle: true,
          ),
          body: Ball(),
        ),
      ),
    );

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballFaces = 1;

  void changeFaces() {
    setState(() {
      ballFaces = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(child: TextButton(
      onPressed: () {
        changeFaces();
      },
      child: Image.asset('images/ball$ballFaces.png'),
    ),
    );
  }
}

