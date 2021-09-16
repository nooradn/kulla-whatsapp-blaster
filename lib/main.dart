import 'package:flutter/material.dart';
import 'package:kulla/resources/colors.dart';
import 'package:remixicon/remixicon.dart';

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
      home: Row(
        children: [
          Container(
            color: primary,
            width: 100,
            // height: 700,
            child: Panel(),
          ),
          Container(
            color: bg,
            // width: 1050,
            // height: 700,
            // child: ,
          )
        ],
      ),
    );
  }
}

class Panel extends StatelessWidget {
  const Panel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 100,
          width: 100,
          child: Icon(Remix.a24_hours_fill),
        )
      ],
    );
  }
}
