import 'package:flutter/material.dart';
import 'package:ogaboxdelivery/models/app_model.dart';
import 'package:ogaboxdelivery/screens/view_added_item_screen.dart';
import 'package:provider/provider.dart';

import 'file:///home/lectro/Documents/devSpace/mobile/flutter/oga_box_delivery/lib/widgets/buttons.dart';

class AddItemScreen extends StatelessWidget {
  static const String id = 'AddItemScreen';

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2.0,
        centerTitle: true,
        title: Text('Item Detail'),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height - 100.0,
          margin:
              EdgeInsets.only(left: 15.0, right: 15.0, top: 10.0, bottom: 10.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                color: Color(0x29000000),
                blurRadius: 5.0,
                offset: Offset(0.0, 2.5),
              ),
            ],
          ),
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'What Can We Deliver Today ?',
                  style: TextStyle(fontSize: 19.0, fontWeight: FontWeight.w600),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: TextField(
                      cursorColor: Colors.grey,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        hintText: 'Enter Item Name',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff2193b0)),
                            borderRadius: BorderRadius.circular(10.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff2193b0)),
                            borderRadius: BorderRadius.circular(10.0)),
                        disabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff2193b0)),
                            borderRadius: BorderRadius.circular(10.0)),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff2193b0)),
                            borderRadius: BorderRadius.circular(10.0)),
//                  filled: true,
//                  fillColor: Colors.blueAccent.withOpacity(0.15),
                      ),
                    ),
                  ),
                  Container(
                    height: 60.0,
                    margin: EdgeInsets.only(
                        left: 16.0, right: 16.0, top: 10.0, bottom: 10.0),
                    padding: EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Color(0xff2193b0)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          'How Many ?',
                          style: TextStyle(color: Colors.white, fontSize: 16.5),
                        ),
//
                        Container(
                          child: Row(
                            children: <Widget>[
                              ActionIcons(
                                onTap: () =>
                                    context.read<AppModel>().itemDecrement(),
                                color: Colors.white,
                                opacityColor: Colors.black.withOpacity(0.16),
                                icon: Icons.remove,
                              ),
                              Text(
                                '${context.watch<AppModel>().itemCount}',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 19.0),
                              ),
                              ActionIcons(
                                onTap: () =>
                                    context.read<AppModel>().itemIncrement(),
                                color: Colors.white,
                                opacityColor: Colors.black.withOpacity(0.16),
                                icon: Icons.add,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 10.0, bottom: 10.0),
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      onPressed: () {},
                      color: Color(0xff2193b0),
                      child: Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Add Photo',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            Icon(
                              Icons.add_a_photo,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: TextField(
                      cursorColor: Colors.grey,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        hintText: 'Add Details (Optional)',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff2193b0)),
                            borderRadius: BorderRadius.circular(10.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff2193b0)),
                            borderRadius: BorderRadius.circular(10.0)),
                        disabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff2193b0)),
                            borderRadius: BorderRadius.circular(10.0)),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff2193b0)),
                            borderRadius: BorderRadius.circular(10.0)),
//                  filled: true,
//                  fillColor: Colors.blueAccent.withOpacity(0.15),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    FlatButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                        Navigator.of(context).pushNamed(ViewAddedItem.id);
                      },
                      child: Text('Add'),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
