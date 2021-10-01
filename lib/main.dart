import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kulla/pages/beginscanqr.dart';
import 'resources/Panel.dart';

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
          Container(
            color: Color(0xffFAFAFA),
            child: BeginScanQR(),
          ),
        ],
      ),
    );
  }
}
