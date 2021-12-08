import 'package:flutter/material.dart';
import 'package:smarthouse/puerta_screen/puertaScreen.dart';

class PuertaMain extends StatefulWidget {
  PuertaMain({Key? key}) : super(key: key);

  @override
  _PuertaMainState createState() => _PuertaMainState();
}

class _PuertaMainState extends State<PuertaMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: BouncingScrollPhysics(),
        children: <Widget>[PuertaScreen()],
      ),
    );
  }
}
