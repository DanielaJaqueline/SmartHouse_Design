import 'package:flutter/material.dart';
import 'package:smarthouse/screens/mainScreen.dart';

class RegistroScren extends StatefulWidget {
  RegistroScren({Key? key}) : super(key: key);

  @override
  _RegistroScrenState createState() => _RegistroScrenState();
}

class _RegistroScrenState extends State<RegistroScren> {
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
      ),
      body: Container(
        child: ListView(
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                  child: Text(
                    'Crear Cuenta',
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
                    Container(
                      alignment: Alignment.center,
                      child: Container(
                        child: Card(
                          child: Container(
                            child: Stack(
                              children: [
                                Image(
                                  width: 75,
                                  height: 75,
                                  image:
                                      AssetImage('assets/img/user_dafault.png'),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
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
                          Align(
                            alignment: (Alignment.topLeft),
                            child: Text(
                              'Contraseña',
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
                                icon: Icon(Icons.lock),
                                filled: true,
                                fillColor: Colors.grey[200],
                              ),
                              obscureText: true,
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Container(
                            width: double.infinity,
                            // ignore: deprecated_member_use
                            child: RaisedButton(
                              onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) => MainScreen()),
                                );
                              },
                              color: Colors.blue.shade800,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 16.0,
                                ),
                                child: Text(
                                  'Registrarse',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
