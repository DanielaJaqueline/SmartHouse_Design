import 'package:flutter/material.dart';

import 'package:smarthouse/screens/loginScreen.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
      Duration(milliseconds: 1500),
      () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => LoginScreen(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          Center(
            child: FractionallySizedBox(
              widthFactor: .6,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                ),
                width: 200,
                height: 200,
                child: Image.asset('assets/img/logo.jpg'),
              ),
            ),
          ),
          Spacer(),
          CircularProgressIndicator(),
          Spacer(),
          Text('Bienvenido'),
          Spacer(),
        ],
      ),
    ));
  }
}
