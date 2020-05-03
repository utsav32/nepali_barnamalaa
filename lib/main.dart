import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(BarnamalaApp());

class BarnamalaApp extends StatelessWidget {
  void alert() {
    print("You clicked kA");
  }

  Expanded alphaRows() {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          alpha(),
          alpha(),
          alpha(),
        ],
      ),
    );
  }

  RaisedButton alpha() {
    return RaisedButton(
      onPressed: () {
        alert();
      },
      child: Image.asset(
        'images/ka.png',
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              AppBar(
                title: Text('नेपाली वर्णमाला '),
              ),
              alphaRows(),
              alphaRows(),
              alphaRows(),
              alphaRows(),
              alphaRows(),
              alphaRows(),
              alphaRows(),
              alphaRows()
            ],
          ),
        ),
      ),
    );
  }
}
