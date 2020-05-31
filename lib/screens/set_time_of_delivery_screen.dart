import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:ogaboxdelivery/widgets/calender.dart';

class ScheduleDelivery extends StatefulWidget {
  static const String id = 'ScheduleDelivery';
  @override
  _ScheduleDeliveryState createState() => _ScheduleDeliveryState();
}

class _ScheduleDeliveryState extends State<ScheduleDelivery> {
  String _date = "Not set";
  String _startTime = "Not set";
  String _endTime = "Not set";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Schedule'),
        actions: <Widget>[
          FlatButton(
            onPressed: () {},
            child: Text(
              'NEXT',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 6,
              child: Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      child: MyCalender(),
                    ),
                    Center(
                      child: Container(
                        padding: EdgeInsets.all(10.0),
                        margin:
                            EdgeInsets.only(left: 25.0, right: 25.0, top: 30),
                        decoration: BoxDecoration(
                            color: Color(0xff2193b0).withOpacity(0.5),
                            borderRadius: BorderRadius.circular(15.0)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'start: $_startTime',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 5.0, right: 5.0),
                              child: Icon(
                                Icons.arrow_forward,
                                color: Colors.black54,
                                size: 20.0,
                              ),
                            ),
                            Text(
                              'end: $_endTime ',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                margin: EdgeInsets.all(5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(3.0),
                        ),
                        color: Color(0xff2193b0),
                        elevation: 3.0,
                        onPressed: () {
                          DatePicker.showTime12hPicker(context,
                              theme: DatePickerTheme(
                                containerHeight: 210.0,
                              ),
                              showTitleActions: true, onConfirm: (time) {
                            print('confirm $time');
                            _startTime = '${time.hour}:${time.minute}';
                            setState(() {});
                          },
                              currentTime: DateTime.now(),
                              locale: LocaleType.en);
                          setState(() {});
                        },
                        child: Container(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            'First Available start time \n SELECT TIME',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 13.5),
                          ),
                        )),
                    SizedBox(
                      height: 10.5,
                    ),
                    RaisedButton(
                      color: Color(0xff2193b0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                      elevation: 4.0,
                      onPressed: () {
                        DatePicker.showTime12hPicker(context,
                            theme: DatePickerTheme(
                              containerHeight: 210.0,
                            ),
                            showTitleActions: true, onConfirm: (time) {
                          print('confirm $time');
                          _endTime = '${time.hour}:${time.minute}';
                          setState(() {});
                        }, currentTime: DateTime.now(), locale: LocaleType.en);
                        setState(() {});
                      },
                      child: Container(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          'Last Available end time \n SELECT TIME',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 13.5),
                        ),
                      ),
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
