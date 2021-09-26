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
        children: [
          Column(
            children: [
              PanelBox(),
              PanelBox(),
              PanelBox(),
            ],
          ),
          Column(
            children: [
              Container(
                child: Switch(
                  value: true,
                  onChanged: (value) {},
                ),
              ),
              Column(
                children: [
                  Icon(Remix.broadcast_fill),
                  Text('Kulla'),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

class PanelBox extends StatelessWidget {
  const PanelBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
