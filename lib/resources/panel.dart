import 'package:flutter/material.dart';
import 'package:remixicon/remixicon.dart';

class Panel extends StatelessWidget {
  const Panel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 75,
      height: double.infinity,
      color: Colors.teal,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              PanelBox(iconImage: Remix.account_circle_line),
              PanelBox(iconImage: Remix.send_plane_2_line),
              PanelBox(iconImage: Remix.contacts_book_2_line),
            ],
          ),
          PanelBox(iconImage: Remix.information_line),
        ],
      ),
    );
  }
}

class PanelBox extends StatelessWidget {
  const PanelBox({Key? key, required this.iconImage}) : super(key: key);
  final iconImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 75,
      height: 75,
      child: Center(
          child: Icon(
        iconImage,
        size: 35,
        color: Colors.white,
      )),
    );
  }
}
