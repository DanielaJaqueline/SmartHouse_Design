import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:smarthouse/banio_screen/ambiente_screen.dart';
import 'package:smarthouse/banio_screen/banio_main.dart';
import 'package:smarthouse/banio_screen/inodoro_screen.dart';
import 'package:smarthouse/dormitorio_screens/dormitorio_main.dart';
import 'package:smarthouse/puerta_screen/main_puerta.dart';
import 'package:smarthouse/puerta_screen/puertaScreen.dart';
import 'package:smarthouse/screens/loginScreen.dart';
import 'package:smarthouse/screens/mainScreen.dart';
import 'package:smarthouse/screens/perfilScreen.dart';
import 'package:smarthouse/screens/registro_screen.dart';
import 'package:smarthouse/screens/splashScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'dart:async';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp().then((value) {
    runApp(MyApp());
  });
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void initState() {
    super.initState();
    getUsers();
  }

  void getUsers() async {
    CollectionReference collectionReference =
        FirebaseFirestore.instance.collection("users");

    QuerySnapshot users = await collectionReference.get();

    if (users.docs.length != 0) {
      for (var doc in users.docs) {
        print(doc.data());
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'VarelaRound Regular'),
      home: SplashScreen(),
    );
  }
}
