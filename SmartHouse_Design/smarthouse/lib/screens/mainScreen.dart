import 'package:flutter/material.dart';
import 'package:smarthouse/screens/homeScreen.dart';
import 'package:smarthouse/screens/devicesScreen.dart';

import 'package:smarthouse/screens/perfilScreen.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _paginaActual = 0;

  List<Widget> _paginas = [HomeScreen(), DevicesScreen(), PerfilScreen()];

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
            Icons.account_circle_outlined,
            color: Colors.black,
          ),
          onPressed: () {},
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
      body: _paginas[_paginaActual],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _paginaActual = index;
          });
        },
        currentIndex: _paginaActual,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Inicio"),
          BottomNavigationBarItem(
              icon: Icon(Icons.sensors), label: "Dispositivos"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_sharp), label: "Perfil"),
        ],
      ),
    );
  }
}
