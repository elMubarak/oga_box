import 'package:flutter/material.dart';
import 'package:ogaboxdelivery/models/app_model.dart';
import 'package:ogaboxdelivery/screens/set_time_of_delivery_screen.dart';
import 'package:provider/provider.dart';

import 'add_item_screen.dart';

class ViewAddedItem extends StatelessWidget {
  static const String id = 'ViewAddedItem';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Items'),
        actions: <Widget>[
          FlatButton(
            onPressed: () {
              Navigator.of(context).pushNamed(ScheduleDelivery.id);
            },
            child: Text(
              'NEXT',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: Consumer<AppModel>(
        builder: (context, addItems, child) {
          return ListView.builder(
            itemBuilder: (context, index) {
              final item = addItems.items[index];
              return ListTile(
                leading: Image.network(''),
                title: Text(item.itemName),
                subtitle: Text(''),
                trailing: Text(''),
              );
            },
            itemCount: addItems.itemsListCount(),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff2193b0),
        onPressed: () {
          Navigator.of(context).pop();
          Navigator.of(context).pushNamed(AddItemScreen.id);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
