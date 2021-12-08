import 'package:flutter/material.dart';

class PerfilScreen extends StatefulWidget {
  PerfilScreen({Key? key}) : super(key: key);

  @override
  _PerfilScreenState createState() => _PerfilScreenState();
}

class _PerfilScreenState extends State<PerfilScreen> {
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
                    'Mi ',
                    style: const TextStyle(fontSize: 25),
                  ),
                ),
                Container(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                  child: Text(
                    'Perfil',
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Card(
                elevation: 1,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                          child: Card(
                            child: Container(
                              child: Stack(
                                children: [
                                  Image(
                                    alignment: Alignment.topLeft,
                                    width: 75,
                                    height: 75,
                                    image: AssetImage(
                                        'assets/img/user_dafault.png'),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            Container(
                              child: Text(
                                'Adrian Tun\n',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            Container(
                              child: Text(
                                'User ID: 000000',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.grey,
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Align(
                            alignment: (Alignment.topLeft),
                            child: Text(
                              'Nombre',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey,
                                height: 3,
                              ),
                            ),
                          ),
                          Align(
                            alignment: (Alignment.topLeft),
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                  borderSide: BorderSide.none,
                                ),
                                icon: Icon(Icons.person),
                                filled: true,
                                fillColor: Colors.grey[200],
                              ),
                            ),
                          ),
                          Align(
                            alignment: (Alignment.topLeft),
                            child: Text(
                              'Teléfono',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey,
                                height: 3,
                              ),
                            ),
                          ),
                          Align(
                            alignment: (Alignment.topLeft),
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                  borderSide: BorderSide.none,
                                ),
                                icon: Icon(Icons.phone),
                                filled: true,
                                fillColor: Colors.grey[200],
                              ),
                            ),
                          ),
                          Align(
                            alignment: (Alignment.topLeft),
                            child: Text(
                              'Correo',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey,
                                height: 3,
                              ),
                            ),
                          ),
                          Align(
                            alignment: (Alignment.topLeft),
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                  borderSide: BorderSide.none,
                                ),
                                icon: Icon(Icons.mail),
                                filled: true,
                                fillColor: Colors.grey[200],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(30),
                      child: GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            barrierDismissible: false,
                            builder: (builder) => AlertDialog(
                              title: Text('¿Desea actualizar los datos?'),
                              content: Text(
                                  'Este es el texto del cuadro del dialogo'),
                              actions: <Widget>[
                                // ignore: deprecated_member_use
                                FlatButton(
                                  child: Text(
                                    'Ok',
                                    style: TextStyle(color: Colors.blue),
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                                // ignore: deprecated_member_use
                                FlatButton(
                                  child: Text(
                                    'Cancelar',
                                    style: TextStyle(color: Colors.blue),
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            ),
                          );
                        },
                        child: Card(
                          color: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7.0),
                          ),
                          child: Container(
                            padding: EdgeInsets.all(10),
                            child: Align(
                              alignment: (Alignment.center),
                              child: Text(
                                'Editar Perfil',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
