import 'package:chatonline/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() async {
  runApp(MyApp());
  Firestore.instance.collection('mensagens').snapshots().listen((dado) {
    dado.documents.forEach((d) {
      print(d.data);
    });
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        iconTheme: IconThemeData(
          color: Colors.red,
        ),
      ),
      home: ChatScreen(),
    );
  }
}
