import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: magicball(),
      ),
    );

class magicball extends StatefulWidget {
  @override
  State<magicball> createState() => _magicballState();
}

class _magicballState extends State<magicball> {
  get child => null;
  int ballnum = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Ask Me Anything'),
      ),
      backgroundColor: Colors.blue,
      body: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    ballnum = Random().nextInt(5) + 1;
                  });
                },
                child: Image.asset('images/ball$ballnum.png'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
