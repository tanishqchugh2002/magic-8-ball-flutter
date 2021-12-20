import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: App(),
      ),
    );

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue.shade900,
        title: Text('Ask Me Anything'),
      ),
      body: BODY(),
    );
  }
}

class BODY extends StatefulWidget {

  @override
  _BODYState createState() => _BODYState();
}
int x=1;
class _BODYState extends State<BODY> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: (){
          setState(() {
            x=1+Random().nextInt(5);
          });
        },
        child: Container(
          child: Image.asset('images/ball$x.png'),
        ),
      ),
    );
  }
}

