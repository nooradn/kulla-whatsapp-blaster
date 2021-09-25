import 'package:flutter/material.dart';

int selectedPanel = 1;
dynamic panelColor;

// LEFT GREEN PANELBAR

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
    return MouseRegion(
      onHover: (event) => setState(() {
        panelColor = Color(0x55000000);
      }),
      onExit: (event) => setState(() {
        panelColor = Colors.transparent;
      }),
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        child: Container(
          height: 75,
          width: 75,
          color: panelColor,
          child: Center(
            child: Icon(
              widget.icon,
              size: 35,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
