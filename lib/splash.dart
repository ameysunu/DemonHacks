import 'dart:async';
import 'package:demonhacks/login.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => Login())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Image.asset('images/main.png'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10.0, 30, 10, 0),
            child: Center(
              child: Container(
                  height: 100,
                  width: 300,
                  child: Image.asset('images/name.png')),
            ),
          ),
        ],
      ),
    );
  }
}
