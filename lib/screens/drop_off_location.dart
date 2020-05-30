import 'package:flutter/material.dart';
import 'package:ogaboxdelivery/utils/utills_color.dart';
import 'package:ogaboxdelivery/widgets/buttons.dart';

class SearchDropOffLocation extends StatefulWidget {
  static const String id = 'SearchDropOffLocation';
  @override
  _SearchDropOffLocationState createState() => _SearchDropOffLocationState();
}

class _SearchDropOffLocationState extends State<SearchDropOffLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(
                top: 10.0,
                bottom: 10.0,
                left: 16.0,
                right: 16.0,
              ),
              width: double.infinity,
//              height: 40.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5.0),
                boxShadow: [
                  BoxShadow(
                    color: kShadowColor,
                    blurRadius: 7.0,
                    offset: Offset(0.1, 3.0),
                  ),
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: ActionIcons(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      icon: Icons.arrow_back,
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: ActionIcons(
                      icon: Icons.search,
                      onTap: () {},
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: ListView(
                  children: <Widget>[
                    ListTile(
                      onTap: () {},
                      leading: Icon(
                        Icons.pin_drop,
                        size: 20.0,
                      ),
                      title: Text('No 2 Dalhatu Road'),
                    ),
                    ListTile(
                      onTap: () {},
                      leading: Icon(
                        Icons.pin_drop,
                        size: 20.0,
                      ),
                      title: Text('Benue Road'),
                    ),
                    ListTile(
                      onTap: () {},
                      leading: Icon(
                        Icons.pin_drop,
                        size: 20.0,
                      ),
                      title: Text('Kawo, Bypass Kamlik'),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
