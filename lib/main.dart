import 'package:flutter/material.dart';
import 'package:kulla/pages/account.dart';
import 'package:kulla/panelbar.dart';
import 'package:kulla/resources.dart';
import 'package:remixicon/remixicon.dart';

void main() => runApp(KullaApp());

class KullaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kulla',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
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

// SISI PANEL KIRI

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
        PanelBar(
          icon: Remix.broadcast_line,
          index: 0,
        )
      ],
    );
  }
}

// KONTEN SISI KANAN
