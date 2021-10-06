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
              PanelBox(
                iconImage: Remix.account_circle_line,
                routePage: '/account',
              ),
              PanelBox(
                iconImage: Remix.send_plane_2_line,
                routePage: '/blaster',
              ),
              PanelBox(
                iconImage: Remix.contacts_book_2_line,
                routePage: '/contacts',
              ),
            ],
          ),
          PanelBox(
            iconImage: Remix.information_line,
            routePage: '/infoapp',
          ),
        ],
      ),
    );
  }
}

class PanelBox extends StatelessWidget {
  const PanelBox({Key? key, required this.iconImage, required this.routePage})
      : super(key: key);
  final iconImage;
  final routePage;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.teal,
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, routePage);
        },
        child: Container(
          width: 75,
          height: 75,
          child: Center(
              child: Icon(
            iconImage,
            color: Colors.white,
            size: 35,
          )),
        ),
      ),
    );
  }
}
