import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ogaboxdelivery/screens/drop_off_location.dart';
import 'package:ogaboxdelivery/screens/more_info_location_screen.dart';
import 'package:ogaboxdelivery/screens/pick_up_location.dart';
import 'package:ogaboxdelivery/widgets/buttons.dart';
import 'package:ogaboxdelivery/widgets/oga_box_map.dart';
import 'package:ogaboxdelivery/widgets/side_menu.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'HomeScreen';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void initState() {
    Timer(Duration(seconds: 5), () => bottomSheet());
    super.initState();
  }

  Positioned bottomSheet() {
    return Positioned(
      bottom: 0.0,
      child: Container(
        padding: EdgeInsets.all(15.5),
        width: MediaQuery.of(context).size.width,
        height: 190.0,
        decoration: BoxDecoration(
          color: Color(0xff2193b0),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(
              20.0,
            ),
            topLeft: Radius.circular(
              20.0,
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            RaisedButton(
              elevation: 1.2,
              hoverElevation: 1.5,
              focusElevation: 1.5,
              highlightElevation: 1.5,
//                    hoverColor: Color(0xff2193b0).withOpacity(0.05),
//                    splashColor: Color(0xff2193b0).withOpacity(0.05),
              highlightColor: Color(0xff2193b0).withOpacity(0.08),
              color: Colors.white,
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Text(
                      'Pick-up Location',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Color(0XFF404040),
                      ),
                    ),
                  ),
//
                  isGettingPickUpLocation
                      ? SizedBox(
                          height: 15.0,
                          width: 15.0,
                          child: CircularProgressIndicator(
                            strokeWidth: 1.4,
                          ),
                        )
                      : Icon(Icons.chevron_right),
                ],
              ),
              onPressed: () {
                Navigator.of(context).pushNamed(SearchPickUpLocation.id);
              },
            ),
            RaisedButton(
              elevation: 1.2,
              hoverElevation: 1.5,
              focusElevation: 1.5,
              highlightElevation: 1.5,
              color: Colors.white,
              highlightColor: Color(0xff2193b0).withOpacity(0.08),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      'Drop-off Location',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Color(0XFF404040),
                      ),
                    ),
                  ),
                  Icon(Icons.chevron_right)
                ],
              ),
              onPressed: () {
                Navigator.of(context).pushNamed(SearchDropOffLocation.id);
              },
            ),
            FlatButton(
              onPressed: () {
                Navigator.of(context).pushNamed(MoreInfoLocation.id);
              },
              child: Text(
                'NEXT',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  bool isGettingPickUpLocation = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      drawer: Drawer(
        child: SafeArea(child: SideMenu()),
      ),
      body: Stack(
        children: <Widget>[
          OgaBoxMap(),
          Positioned(
            top: 45.0,
            left: 15.0,
            child: Builder(
              builder: (context) => Material(
                shape: CircleBorder(),
                clipBehavior: Clip.hardEdge,
                color: Colors.white,
                child: InkWell(
                  onTap: () => Scaffold.of(context).openDrawer(),
                  child: Container(
                    width: 36.5,
                    height: 36.5,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.menu,
                      color: Color(0xff2193b0),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 45.0,
            right: 15.0,
            child: Row(
              children: <Widget>[
                ActionIcons(
                  onTap: () {},
                  icon: Icons.notifications_active,
                  color: Color(0xff2193b0),
                ),
                ActionIcons(
                  onTap: () {},
                  icon: Icons.info,
                  color: Color(0xff2193b0),
                ),
              ],
            ),
          ),
          bottomSheet(),
        ],
      ),
    );
  }
}
