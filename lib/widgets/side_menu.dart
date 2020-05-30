import 'package:flutter/material.dart';
import 'package:ogaboxdelivery/screens/delivery_history_screen.dart';

class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: InkWell(
              onTap: () {},
              child: Container(
                width: double.infinity,
                color: Color(0xff2193b0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    CircleAvatar(
                      radius: 34,
                      backgroundColor: Colors.white,
                      child: Center(
                        child: Icon(
                          Icons.person,
                          size: 40.0,
                          color: Color(0xff2193b0),
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Musa Damu',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 19.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          'N30,000.',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 19.0,
                          ),
                        ),
                      ],
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Icon(
                        Icons.chevron_right,
                        size: 32.0,
                        color: Colors.white54,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 10,
            child: Container(
              child: Column(
                children: <Widget>[
                  ListTile(
                    leading: Icon(
                      Icons.home,
                    ),
                    title: Text('Home'),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.of(context).pushNamed(DeliveryHistory.id);
                    },
                    leading: Icon(
                      Icons.access_time,
                    ),
                    title: Text('History'),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.people,
                    ),
                    title: Text('Invite Friends & Earn'),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.headset_mic,
                    ),
                    title: Text('Support'),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.info,
                    ),
                    title: Text('About'),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(width: 0.3, color: Colors.black),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    tooltip: 'LogOut',
                    onPressed: () {},
                    icon: Icon(
                      Icons.power_settings_new,
                    ),
                  ),
                  IconButton(
                    tooltip: 'Settings',
                    onPressed: () {},
                    icon: Icon(
                      Icons.settings,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
