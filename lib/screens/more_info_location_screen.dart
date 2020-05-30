import 'package:flutter/material.dart';

import 'file:///home/lectro/Documents/devSpace/mobile/flutter/oga_box_delivery/lib/screens/add_item_screen.dart';

class MoreInfoLocation extends StatelessWidget {
  static const String id = 'MoreInfoLocation ';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Location Detail'),
        actions: <Widget>[
          FlatButton(
            onPressed: () {
              Navigator.of(context).pushNamed(AddItemScreen.id);
            },
            child: Text(
              'NEXT',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(bottom: 15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
//            Row(
//              mainAxisAlignment: MainAxisAlignment.end,
//              children: <Widget>[
//                FlatButton(
//                  onPressed: () {
//                    Navigator.of(context).pushNamed(AddItemScreen.id);
//                  },
//                  child: Text(
//                    '',
//                    style: TextStyle(color: Colors.black),
//                  ),
//                ),
//              ],
//            ),
          ],
        ),
      ),
    );
  }
}
