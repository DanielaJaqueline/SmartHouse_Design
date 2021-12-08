import 'package:flutter/material.dart';
import 'package:smarthouse/cocina_screens/alacena_screen.dart';
import 'package:smarthouse/cocina_screens/estufa_screen.dart';
import 'package:smarthouse/cocina_screens/gas_screen.dart';

class MainCocina extends StatefulWidget {
  MainCocina({Key? key}) : super(key: key);

  @override
  _MainCocinaState createState() => _MainCocinaState();
}

class _MainCocinaState extends State<MainCocina> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          AlacenaScreen(),
          EstufaEscreen(),
          GasScreen(),
        ],
      ),
    );
  }
}
