import 'package:flutter/material.dart';
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
          Container(
            color: primary,
            width: 75,
            child: Panel(),
          ),
          Container(color: bg)
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
              icon: Remix.account_circle_line,
              index: 1,
            ),
            PanelBar(
              icon: Remix.send_plane_line,
              index: 2,
            ),
            PanelBar(
              icon: Remix.contacts_book_2_line,
              index: 3,
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

// MENU PANEL BAR SISI KIRI
