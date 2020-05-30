import 'package:flutter/material.dart';
import 'package:ogaboxdelivery/screens/add_item_screen.dart';
import 'package:ogaboxdelivery/screens/delivery_history_screen.dart';
import 'package:ogaboxdelivery/screens/drop_off_location.dart';
import 'package:ogaboxdelivery/screens/home_screen.dart';
import 'package:ogaboxdelivery/screens/intro_screen.dart';
import 'package:ogaboxdelivery/screens/log_in_screen.dart';
import 'package:ogaboxdelivery/screens/more_info_location_screen.dart';
import 'package:ogaboxdelivery/screens/pick_up_location.dart';
import 'package:ogaboxdelivery/screens/set_time_of_delivery_screen.dart';
import 'package:ogaboxdelivery/screens/sign_up_screen.dart';
import 'package:ogaboxdelivery/screens/splash_screen.dart';
import 'package:ogaboxdelivery/screens/view_added_item_screen.dart';
import 'package:provider/provider.dart';

import 'models/app_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppModel(),
      child: MaterialApp(
        title: 'Oga Box',
        theme: ThemeData(
          primaryColor: Color(0xff2193b0),
          primarySwatch: Colors.blue,
          appBarTheme: AppBarTheme(
            textTheme: TextTheme(
              headline6: TextStyle(color: Colors.white, fontSize: 23.0),
            ),
            iconTheme: IconThemeData(
              color: Colors.white,
              size: 20.0,
            ),
          ),

//        visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: SplashScreen.id,
        routes: {
          SplashScreen.id: (context) => SplashScreen(),
          IntroScreen.id: (context) => IntroScreen(),
          LogInScreen.id: (context) => LogInScreen(),
          SignUpScreen.id: (context) => SignUpScreen(),
          HomeScreen.id: (context) => HomeScreen(),
          SearchPickUpLocation.id: (context) => SearchPickUpLocation(),
          SearchDropOffLocation.id: (context) => SearchDropOffLocation(),
          DeliveryHistory.id: (context) => DeliveryHistory(),
          MoreInfoLocation.id: (context) => MoreInfoLocation(),
          ViewAddedItem.id: (context) => ViewAddedItem(),
          AddItemScreen.id: (context) => AddItemScreen(),
          ScheduleDelivery.id: (context) => ScheduleDelivery(),
        },
      ),
    );
  }
}
