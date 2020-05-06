import 'dart:async';

import 'package:flutter/material.dart';
import 'package:trippas/trips.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();

    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        // color: Colors.deepPurple,
        child: Center(
      child: new Text("Trippas",
          textDirection: TextDirection.ltr,
          style: TextStyle(
              color: Colors.deepPurpleAccent,
              fontSize: 50.0,
              fontWeight: FontWeight.w900)),
    ));
  }

  Future<Timer> loadData() async {
    return new Timer(Duration(seconds: 5), onDoneLoading);
  }

  onDoneLoading() async {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => Trips()));
  }
}
