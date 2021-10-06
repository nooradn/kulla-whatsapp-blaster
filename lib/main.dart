import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kulla/pagecontents.dart';
import 'resources/panel.dart';

var isConnected = false;

void main() {
  runApp(Kulla());
}

class Kulla extends StatelessWidget {
  const Kulla({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kulla - WhatsApp Blaster',
      themeMode: ThemeMode.light,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.teal,
      ),
      home: Row(
        children: [
          Panel(),
          ContentsPage(),
        ],
      ),
    );
  }
}
