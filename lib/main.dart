import 'package:flutter/material.dart';
import 'resources/Panel.dart';
import 'resources/contents-router.dart';
import 'package:kulla/pages/account.dart';

void main() => runApp(Kulla());

class Kulla extends StatelessWidget {
  const Kulla({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kulla - WhatsApp Blaster',
      theme: ThemeData(
        primaryColor: Colors.teal,
        primaryColorDark: Colors.black54,
      ),
      home: Row(
        children: [
          Panel(),
          Container(
            child: Account(),
            color: Color(0xffFAFAFA),
          ),
        ],
      ),
    );
  }
}
