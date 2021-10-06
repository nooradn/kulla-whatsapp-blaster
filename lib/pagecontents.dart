import 'package:flutter/material.dart';
import 'package:kulla/main.dart';
import 'pages/beginscanqr.dart';
import 'pages/account.dart';
import 'pages/blaster.dart';
import 'pages/contacts.dart';
import 'pages/infoapp.dart';

class ContentsPage extends StatefulWidget {
  const ContentsPage({Key? key}) : super(key: key);

  @override
  _ContentsPageState createState() => _ContentsPageState();
}

class _ContentsPageState extends State<ContentsPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: isConnected == true ? '/blaster' : '/scanqr',
      routes: {
        '/scanqr': (context) => BeginScanQR(),
        '/account': (context) => AccountPage(),
        '/blaster': (context) => BlasterPage(),
        '/contacts': (context) => ContactsPage(),
        '/infoapp': (context) => InfoApp(),
      },
      home: Row(
        children: [
          Container(
            color: Color(0xffFAFAFA),
            child: BeginScanQR(),
          ),
        ],
      ),
    );
  }
}
