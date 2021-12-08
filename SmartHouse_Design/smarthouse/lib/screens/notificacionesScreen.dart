import 'package:flutter/material.dart';

class NotificacionScreen extends StatefulWidget {
  NotificacionScreen({Key? key}) : super(key: key);

  @override
  _NotificacionScreenState createState() => _NotificacionScreenState();
}

class _NotificacionScreenState extends State<NotificacionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            child: Text("Hola, yo soy el Settings"),
          )
        ],
      ),
    );
  }
}
