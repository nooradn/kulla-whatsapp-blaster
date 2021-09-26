import 'package:flutter/material.dart';
import 'package:kulla/pages/account.dart';
import 'package:kulla/panelbar.dart';
import 'package:kulla/resources.dart';
import 'package:remixicon/remixicon.dart';

/// JALANKAN APLIKASI
void main() => runApp(KullaApp());

/// WIDGET MAIN APLIKASI

class KullaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kulla',
      home: Row(
        children: [
          /// PANEL SISI KIRI
          Container(
            color: primary,
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
            ),
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

// KONTEN SISI KANAN
