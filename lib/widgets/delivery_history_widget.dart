import 'package:flutter/material.dart';

class DeliveryHistoryWidget extends StatelessWidget {
  const DeliveryHistoryWidget({
    Key key,
    this.date,
    this.deliveryStatus,
    this.deliveryStatusColor,
    this.dropOffLocation,
    this.pickupLocation,
    this.price,
    this.rideIcon,
  }) : super(key: key);
  final String price;
  final String date;
  final String deliveryStatus;
  final Color deliveryStatusColor;
  //
  final IconData rideIcon;
  final String pickupLocation;
  final String dropOffLocation;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding:
            EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0, top: 13.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 0,
              child: Icon(
                rideIcon,
                size: 24.0,
              ),
            ),
            SizedBox(
              width: 25.0,
            ),
            Expanded(
              flex: 3,
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.person_pin_circle,
                          size: 17.0,
                          color: Colors.green,
                        ),
                        Text(dropOffLocation),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 8.0),
                      height: 19.0,
                      decoration: BoxDecoration(
                        border: Border(
                          left: BorderSide(
                            style: BorderStyle.solid,
                            color: Colors.black,
                            width: 1.0,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.person_pin_circle,
                          size: 17.0,
                          color: Colors.red,
                        ),
                        Text(pickupLocation),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      price,
                      style: TextStyle(fontSize: 19.0),
                    ),
                    SizedBox(
                      height: 2.0,
                    ),
                    Text(
                      date,
                      style: TextStyle(fontSize: 11.0),
                    ),
                    SizedBox(
                      height: 2.0,
                    ),
                    Text(
                      deliveryStatus,
                      style: TextStyle(color: deliveryStatusColor),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
