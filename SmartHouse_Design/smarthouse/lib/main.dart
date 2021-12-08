import 'package:flutter/material.dart';

import 'package:smarthouse/screens/splashScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'VarelaRound Regular'),
      home: SplashScreen(),
    );
  }
}
