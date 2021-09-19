import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:kulla/resources.dart';
import 'package:remixicon/remixicon.dart';

void main() => runApp(KullaApp());

class KullaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kulla',
      theme: ThemeData(
        // textTheme: GoogleFonts.ubuntuTextTheme(
        //   Theme.of(context).textTheme,
        // ),
        primarySwatch: Colors.green,
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
int selectedPanel = 2;

class PanelBar extends StatefulWidget {
  const PanelBar({Key? key, required this.icon, required this.index})
      : super(key: key);
  final icon;
  final int index;
  @override
  _PanelBarState createState() => _PanelBarState();
}

class _PanelBarState extends State<PanelBar> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => setState(() {
        selectedPanel = widget.index;
      }),
      child: Container(
        height: 75,
        width: 75,
        color: selectedPanel == widget.index
            ? Color(0x55000000)
            : Colors.transparent,
        child: Center(
          child: Icon(
            widget.icon,
            size: 35,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
