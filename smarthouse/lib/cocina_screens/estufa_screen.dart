import 'package:flutter/material.dart';
import 'package:smarthouse/cocina_screens/gas_screen.dart';
import 'package:smarthouse/cocina_screens/alacena_screen.dart';

class EstufaEscreen extends StatefulWidget {
  @override
  _EstufaEscreenState createState() => _EstufaEscreenState();
}

bool state = false;
String estado = 'OFF';

class _EstufaEscreenState extends State<EstufaEscreen> {
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
                'Cocina',
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              )),
          Container(
            padding: EdgeInsetsDirectional.fromSTEB(20.0, 0, 0, 0),
            child: Text('Hay un total de 4 dispositivos conectados\n',
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
                            Icons.breakfast_dining_outlined,
                          )),
                      Text(
                        'Alacena',
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
                            Icons.local_fire_department_sharp,
                            color: Colors.white,
                          )),
                      Text(
                        'Estufa',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                child: Container(
                  padding: EdgeInsets.fromLTRB(14, 5, 14, 5),
                  child: Column(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.device_thermostat_rounded,
                          )),
                      Text('Temp'),
                    ],
                  ),
                ),
              ),
              Card(
                child: Container(
                  padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                  child: Column(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.analytics_rounded,
                          )),
                      Text('Niveles'),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.fromLTRB(100, 50, 100, 50),
            child: CircleAvatar(
              radius: 70,
              backgroundColor: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
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
                  Text(estado),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
            child: Column(
              children: [
                Text(
                  'Estufa',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Text('Conectado'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
