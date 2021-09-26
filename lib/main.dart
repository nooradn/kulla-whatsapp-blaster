import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:kulla/pages/account.dart';
import 'package:kulla/panelbar.dart';
=======
import 'package:google_fonts/google_fonts.dart';
>>>>>>> parent of 5937900 (update panel-side)
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
<<<<<<< HEAD
        primarySwatch: Colors.teal,
=======
        textTheme: GoogleFonts.ubuntuTextTheme(
          Theme.of(context).textTheme,
        ),
        primarySwatch: Colors.green,
>>>>>>> parent of 5937900 (update panel-side)
      ),
      home: Row(
        children: [
          /// PANEL SISI KIRI
          Container(
            color: primary,
<<<<<<< HEAD
            width: 75,
            child: Panel(),
          ),

          /// KONTEN SISI KANAN
          Container(
            height: double.infinity,
            width: double.infinity,
            padding: EdgeInsets.all(50),
            child: AccountPage(),
          ),
=======
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
>>>>>>> parent of 5937900 (update panel-side)
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
<<<<<<< HEAD
            PanelBar(
              index: 1,
              icon: Remix.account_circle_line,
            ),
            PanelBar(
              index: 2,
              icon: Remix.send_plane_line,
            ),
            PanelBar(
              index: 3,
              icon: Remix.contacts_book_2_line,
=======
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
>>>>>>> parent of 5937900 (update panel-side)
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
<<<<<<< HEAD

// KONTEN SISI KANAN
=======
>>>>>>> parent of 5937900 (update panel-side)
