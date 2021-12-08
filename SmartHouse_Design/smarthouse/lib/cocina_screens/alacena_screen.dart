// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter/material.dart';


class AlacenaScreen extends StatefulWidget {
  AlacenaScreen({Key? key}) : super(key: key);

  @override
  _AlacenaScreenState createState() => _AlacenaScreenState();
}

class _AlacenaScreenState extends State<AlacenaScreen> {
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
                color: Colors.blue,
                child: Container(
                  padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                  child: Column(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.breakfast_dining_outlined,
                            color: Colors.white,
                          )),
                      Text(
                        'Alacena',
                        style: TextStyle(color: Colors.white),
                      ),
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
                            Icons.local_fire_department_sharp,
                          )),
                      Text(
                        'Estufa',
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
          Column(
            children: [
              Container(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Text(
                        'Recipiente 1: 50%\n',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      LinearProgressIndicator(
                        backgroundColor: Colors.grey[300],
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                        minHeight: 40,
                        value: .5,
                      ),
                    ],
                  )),
              Container(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Text(
                        'Recipiente 2: 70%\n',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      LinearProgressIndicator(
                        backgroundColor: Colors.grey[300],
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                        minHeight: 40,
                        value: .7,
                      ),
                    ],
                  )),
              Container(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Text(
                        'Recipiente 3: 50%\n',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      LinearProgressIndicator(
                        backgroundColor: Colors.grey[300],
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                        minHeight: 40,
                        value: .5,
                      ),
                    ],
                  )),
              Container(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Text(
                        'Recipiente 4: 50%\n',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      LinearProgressIndicator(
                        backgroundColor: Colors.grey[300],
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                        minHeight: 40,
                        value: .5,
                      ),
                    ],
                  ))
            ],
          ),
          Container(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Recipientes',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                Text(
                  'Conectado',
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
