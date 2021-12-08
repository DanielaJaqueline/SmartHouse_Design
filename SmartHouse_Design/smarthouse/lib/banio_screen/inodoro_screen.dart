import 'package:flutter/material.dart';

class InodoroScreen extends StatefulWidget {
  InodoroScreen({Key? key}) : super(key: key);

  @override
  _InodoroScreenState createState() => _InodoroScreenState();
}

bool state = false;
String estado = 'OFF';

class _InodoroScreenState extends State<InodoroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //color de fondo
        backgroundColor: Colors.grey[50],
        bottomOpacity: 0.0,
        elevation: 0.0,
        // Establecer la imagen de la pantalla frontal
        leading: IconButton(
          color: Colors.grey,
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),

        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.add_rounded,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
              padding: EdgeInsetsDirectional.fromSTEB(20.0, 0, 0, 0),
              child: Text(
                'Baño',
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              )),
          Container(
            padding: EdgeInsetsDirectional.fromSTEB(20.0, 0, 0, 0),
            child: Text('Hay un total de 2 dispositivos conectados\n',
                style: TextStyle(fontStyle: FontStyle.italic)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('\n\n\n\n\n'),
              Card(
                child: Container(
                  padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                  child: Column(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.air_rounded,
                          )),
                      Text(
                        'Ambiente',
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                color: Colors.blue,
                child: Container(
                  padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                  child: Column(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.bathroom_outlined,
                            color: Colors.white,
                          )),
                      Text(
                        'Inodoro',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(padding: EdgeInsets.only(top: 20)),
          Container(
            width: 100,
            height: 100,
            child: Image.asset(
              'assets/img/inodoro.png',
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 20)),
          Column(
            children: [
              Container(
                child: Stack(
                  children: [
                    Container(
                      child: CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.white,
                        child: IconButton(
                          onPressed: () {},
                          iconSize: 40,
                          color: Colors.grey,
                          icon: Icon(
                            Icons.power_settings_new_rounded,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
              ),
              Text(
                'Descargar Agua',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 40),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: [
                Container(
                  child: Text(
                    'Inodoro',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    'Conectado',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
