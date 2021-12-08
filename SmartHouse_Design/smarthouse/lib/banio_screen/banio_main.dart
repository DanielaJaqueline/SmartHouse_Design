import 'package:flutter/material.dart';
import 'package:smarthouse/banio_screen/ambiente_screen.dart';
import 'package:smarthouse/banio_screen/inodoro_screen.dart';

class BanioMain extends StatefulWidget {
  BanioMain({Key? key}) : super(key: key);

  @override
  _BanioMainState createState() => _BanioMainState();
}

class _BanioMainState extends State<BanioMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          AmbienteScreen(),
          InodoroScreen(),
        ],
      ),
    );
  }
}
