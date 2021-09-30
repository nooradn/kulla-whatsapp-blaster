import 'package:flutter/material.dart';
import 'package:kulla/pages/account.dart';
import 'package:kulla/pages/blaster.dart';
import 'package:kulla/pages/contacts.dart';
import 'package:kulla/pages/infoapp.dart';
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
                routePage: Account,
              ),
              PanelBox(
                iconImage: Remix.send_plane_2_line,
                routePage: Blaster,
              ),
              PanelBox(
                iconImage: Remix.contacts_book_2_line,
                routePage: Contacts,
              ),
            ],
          ),
          PanelBox(
            iconImage: Remix.information_line,
            routePage: InfoApp,
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
          Navigator.push(context, routePage);
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
