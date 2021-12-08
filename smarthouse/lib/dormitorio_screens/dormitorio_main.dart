import 'package:flutter/material.dart';
import 'package:smarthouse/dormitorio_screens/PaginaAire.dart';
import 'package:smarthouse/dormitorio_screens/PaginaHome.dart';
import 'package:smarthouse/dormitorio_screens/PaginaUser.dart';

class DormitorioMain extends StatefulWidget {
  DormitorioMain({Key? key}) : super(key: key);

  @override
  _DormitorioMainState createState() => _DormitorioMainState();
}

class _DormitorioMainState extends State<DormitorioMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          PaginaHome(),
          PaginaUser(),
          PaginaAire(),
        ],
      ),
    );
  }
}
