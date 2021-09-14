import 'package:flutter/material.dart';

void main() {
  runApp(KullaApp());
}

class KullaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kulla',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      // home: ,
    );
  }
}
