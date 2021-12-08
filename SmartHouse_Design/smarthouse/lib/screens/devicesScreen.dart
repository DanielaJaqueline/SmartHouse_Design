import 'package:flutter/material.dart';
import 'package:smarthouse/puerta_screen/main_puerta.dart';
import 'package:smarthouse/qr_scan/qr_scanner.dart';

class DevicesScreen extends StatefulWidget {
  DevicesScreen({Key? key}) : super(key: key);

  @override
  _DevicesScreenState createState() => _DevicesScreenState();
}

class _DevicesScreenState extends State<DevicesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            Row(
              children: [
                Container(
                    padding: EdgeInsetsDirectional.fromSTEB(20.0, 0, 0, 0),
                    child: Text(
                      'Dispositivos ',
                      style: const TextStyle(fontSize: 25),
                    )),
                Container(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                    child: Text(
                      'Activos',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 25),
                    )),
              ],
            ),
            Container(
              padding: EdgeInsetsDirectional.fromSTEB(20.0, 0, 0, 0),
              child: Text('\Un total de 4 dispositivos activados\n',
                  style: TextStyle(color: Colors.grey)),
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
                              Icons.sensor_window_outlined,
                            )),
                        Text(
                          'Ventanas',
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
                              Icons.light,
                            )),
                        Text('Focos'),
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
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => PuertaMain(),
                                ),
                              );
                            },
                            icon: Icon(
                              Icons.sensor_door_outlined,
                            )),
                        Text(
                          'Puerta',
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Card(
                    color: Colors.blue,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                      child: Column(
                        children: [
                          IconButton(
                              onPressed: () => _onButtonPressed(),
                              icon: Icon(
                                Icons.add_rounded,
                                color: Colors.white,
                              )),
                          Text(
                            'Agregar',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  void _onButtonPressed() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            color: Color(0xFF737373),
            child: Container(
              child: _buildBottomNavigationMenu(),
              decoration: BoxDecoration(
                  color: Theme.of(context).canvasColor,
                  borderRadius: BorderRadius.only(
                      topLeft: const Radius.circular(10),
                      topRight: const Radius.circular(10))),
            ),
          );
        });
  }

  Column _buildBottomNavigationMenu() {
    return Column(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.sensors),
          title: Text('Buscando Nuevo Dispositivo'),
        ),
        Container(
          height: 150.0,
          width: 140.0,
          child: Column(
            children: [
              CircularProgressIndicator(),
              SizedBox(
                height: 40,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => QrScanner()));
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue)),
                  child: Text(
                    'Scanea un QR',
                    style: TextStyle(color: Colors.white),
                  ))
            ],
          ),
        )
      ],
    );
  }
}
