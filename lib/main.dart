import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kulla/resources.dart';
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
        textTheme: GoogleFonts.ubuntuTextTheme(
          Theme.of(context).textTheme,
        ),
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
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            SizedBox(
              height: 100,
              width: 100,
              child: Center(
                child: Icon(
                  Remix.account_circle_line,
                  size: 41,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 100,
              width: 100,
              child: Icon(
                Remix.send_plane_line,
                size: 41,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 100,
              width: 100,
              child: Icon(
                Remix.contacts_book_2_line,
                size: 41,
                color: Colors.white,
              ),
            )
          ],
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 25),
          child: Column(
            children: [
              Icon(
                Remix.broadcast_fill,
                color: Colors.white,
                size: 41,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Kulla',
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.white,
                  // fontFamily:
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
