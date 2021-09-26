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
    return Container(
      height: 75,
      width: 75,
      color: selectedPanel == 1
          ? Colors.black.withOpacity(50)
          : Colors.transparent,
      child: Center(
        child: Icon(
          widget.icon,
          size: 35,
          color: Colors.white,
        ),
      ),
    );
  }
}
