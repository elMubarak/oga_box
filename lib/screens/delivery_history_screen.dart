import 'package:flutter/material.dart';
import 'package:ogaboxdelivery/widgets/delivery_history_widget.dart';

class DeliveryHistory extends StatefulWidget {
  static const String id = 'DeliveryHistory';

  @override
  _DeliveryHistoryState createState() => _DeliveryHistoryState();
}

class _DeliveryHistoryState extends State<DeliveryHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('History'),
      ),
      body: ListView(
        children: <Widget>[
          DeliveryHistoryWidget(
            rideIcon: Icons.directions_car,
            pickupLocation: 'Kawo Bridge',
            dropOffLocation: 'Kasuwan Barci',
            price: 'N350',
            date: '12-09-2020',
            deliveryStatus: 'Canceled',
            deliveryStatusColor: Colors.red,
          ),
          DeliveryHistoryWidget(
            rideIcon: Icons.directions_bike,
            pickupLocation: 'ASD Mall',
            dropOffLocation: 'Mando Park',
            price: 'N150',
            date: '22-12-2020',
            deliveryStatus: 'Completed',
            deliveryStatusColor: Colors.green,
          ),
          DeliveryHistoryWidget(
            rideIcon: Icons.motorcycle,
            pickupLocation: 'Samarda Station',
            dropOffLocation: 'No 3 Cele Junction',
            price: 'N200',
            date: '25-12-2020',
            deliveryStatus: 'Completed',
            deliveryStatusColor: Colors.green,
          ),
        ],
      ),
    );
  }
}
