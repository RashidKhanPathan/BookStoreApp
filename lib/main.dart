import 'dart:async';

import 'package:ebook/screens/codingbooks.dart';
import 'package:ebook/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'UI/HomeScreen.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(primarySwatch: Colors.green),
      home: SplashScreen(),
      routes: <String, WidgetBuilder>{
        'homescreen': (BuildContext context) => new HomeScreen(),
        'homepage': (BuildContext context) => new HomePage(),
        'codingbook': (BuildContext context) => new CodingBooks()
      },
    ));

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  _startTime() async {
    var _duration = Duration(seconds: 3);
    return Timer(_duration, _navigatePage);
  }

  void _navigatePage() {
    Navigator.of(context).pushReplacementNamed('homepage');
  }

  @override
  void initState() {
    super.initState();
    _startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: _body(),
    );
  }

  _body() {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('images/book.png'),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text(
                  "Book Store",
                  style: TextStyle(
                      fontSize: 45.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
