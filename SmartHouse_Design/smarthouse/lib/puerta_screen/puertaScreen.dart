import 'package:flutter/material.dart';

class PuertaScreen extends StatefulWidget {
  PuertaScreen({Key? key}) : super(key: key);

  @override
  _PuertaScreenState createState() => _PuertaScreenState();
}

bool state = false;
String estado = 'OFF';
Widget icono = Icon(
  Icons.lock_open_rounded,
);

// ignore: unused_element
__icono() {
  if (state == false) {
    icono = Icon(
      Icons.lock_open_rounded,
    );
  } else {
    icono = Icon(
      Icons.lock_rounded,
    );
  }
}

class _PuertaScreenState extends State<PuertaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[50],
        bottomOpacity: 0.0,
        elevation: 0.0,
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
                'Control de Puertas',
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              )),
          Container(
            padding: EdgeInsetsDirectional.fromSTEB(20.0, 0, 0, 0),
            child: Text('Hay un total de 1 dispositivo conectado\n',
                style: TextStyle(fontStyle: FontStyle.italic)),
          ),
          Padding(padding: EdgeInsets.only(top: 40)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Card(
                color: Colors.blue,
                child: Container(
                  padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                  child: Column(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.sensor_door_outlined,
                            color: Colors.white,
                          )),
                      Text(
                        'Puerta',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 40),
          ),
          Column(
            children: [
              Container(
                child: Stack(
                  children: [
                    Container(
                      child: CircleAvatar(
                        radius: 70,
                        backgroundColor: Colors.white,
                        child: IconButton(
                          onPressed: () {},
                          iconSize: 50,
                          icon: icono,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 40),
              ),
              Text('Desactivado'),
              Padding(
                padding: EdgeInsets.only(top: 40),
              ),
              Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Container(
                          child: Text(
                            'Cámara de Seguridad',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        Container(
                          child: Text('Desconectado'),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(estado),
                        Padding(
                          padding: EdgeInsets.only(right: 5),
                        ),
                        Switch(
                            value: state,
                            onChanged: (bool s) {
                              setState(() {
                                state = s;
                                if (state == false) {
                                  estado = 'OFF';
                                } else {
                                  estado = 'ON';
                                }
                                print(state);
                              });
                            }),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 40),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: TextButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue)),
              onPressed: () {},
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'BLOQUEAR',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
