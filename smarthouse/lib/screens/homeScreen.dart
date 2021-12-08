import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:smarthouse/banio_screen/banio_main.dart';
import 'package:smarthouse/cocina_screens/alacena_screen.dart';
import 'package:smarthouse/cocina_screens/cocina_main.dart';
import 'package:smarthouse/dormitorio_screens/dormitorio_main.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Row(
            children: [
              Container(
                  padding: EdgeInsetsDirectional.fromSTEB(20.0, 0, 0, 0),
                  child: Text(
                    'Hola ',
                    style: const TextStyle(fontSize: 25),
                  )),
              Container(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                  child: Text(
                    'Adrian !',
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 25),
                  ))
            ],
          ),
          Container(
            padding: EdgeInsetsDirectional.fromSTEB(20.0, 0, 0, 0),
            child: Text('\nBuenos dias!, Bienvenido de vuelta\n',
                style: TextStyle(color: Colors.grey)),
          ),
          Card(
            child: Container(
              padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
              child: Stack(
                alignment: Alignment(-0.7, 0.5),
                children: [
                  Image(
                    image: AssetImage('assets/img/sala.jpg'),
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    child: ClipRect(
                      child: Container(
                        width: 350,
                        height: 150,
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
                          child: Container(),
                        ),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsetsDirectional.fromSTEB(20.0, 0, 0, 0),
                        child: Text('Sala',
                            style:
                                TextStyle(color: Colors.white, fontSize: 30)),
                      ),
                      Container(
                        padding: EdgeInsetsDirectional.fromSTEB(20.0, 0, 0, 0),
                        child: Text('4 Dispositivos',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                      )
                    ],
                  )
                ],
              ),
            ),
            elevation: 5,
            margin: EdgeInsets.all(15),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => DormitorioMain()),
              );
            },
            child: Card(
              child: Container(
                padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                child: Stack(
                  alignment: Alignment(-0.7, 0.5),
                  children: [
                    Image(
                      image: AssetImage('assets/img/dormitorio.jpg'),
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      child: ClipRect(
                        child: Container(
                          width: 350,
                          height: 150,
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
                            child: Container(),
                          ),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Text('Dormitorio',
                            style:
                                TextStyle(color: Colors.white, fontSize: 30)),
                        Text('4 Dispositivos',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold))
                      ],
                    )
                  ],
                ),
              ),
              elevation: 5,
              margin: EdgeInsets.all(15),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => MainCocina()),
              );
            },
            child: Card(
              child: Container(
                padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                child: Stack(
                  alignment: Alignment(-0.7, 0.5),
                  children: [
                    Image(
                      image: AssetImage('assets/img/cocina.jpg'),
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      child: ClipRect(
                        child: Container(
                          width: 350,
                          height: 150,
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
                            child: Container(),
                          ),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(20.0, 0, 0, 0),
                          child: Text('Cocina',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 30)),
                        ),
                        Container(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(20.0, 0, 0, 0),
                          child: Text('4 Dispositivos',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                        )
                      ],
                    )
                  ],
                ),
              ),
              elevation: 5,
              margin: EdgeInsets.all(15),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => BanioMain()),
              );
            },
            child: Card(
              child: Container(
                padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                child: Stack(
                  alignment: Alignment(-0.7, 0.5),
                  children: [
                    Image(
                      image: AssetImage('assets/img/banio.jpg'),
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      child: ClipRect(
                        child: Container(
                          width: 350,
                          height: 150,
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
                            child: Container(),
                          ),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(20.0, 0, 0, 0),
                          child: Text('Baño',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 30)),
                        ),
                        Container(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(20.0, 0, 0, 0),
                          child: Text('4 Dispositivos',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                        )
                      ],
                    )
                  ],
                ),
              ),
              elevation: 5,
              margin: EdgeInsets.all(15),
            ),
          ),
        ],
      ),
    );
  }
}
