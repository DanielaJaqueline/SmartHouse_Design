import 'package:flutter/material.dart';

class AmbienteScreen extends StatefulWidget {
  AmbienteScreen({Key? key}) : super(key: key);

  @override
  _AmbienteScreenState createState() => _AmbienteScreenState();
}

bool state = false;
String estado = 'OFF';

class _AmbienteScreenState extends State<AmbienteScreen> {
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
                color: Colors.blue,
                child: Container(
                  padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                  child: Column(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.air_rounded,
                            color: Colors.white,
                          )),
                      Text(
                        'Ambiente',
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
                            Icons.bathroom_outlined,
                          )),
                      Text(
                        'Inodoro',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(padding: EdgeInsets.only(top: 20)),
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
                          icon: Icon(
                            Icons.power_settings_new_rounded,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 40),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  child: LinearProgressIndicator(
                    backgroundColor: Colors.grey[300],
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                    minHeight: 40,
                    value: .7,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10.0),
                  alignment: Alignment.center,
                  child: Text('75%',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                )
              ],
            ),
          ),
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
                        'Aromatizante',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Container(
                      child: Text('Conectado'),
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
    );
  }
}
