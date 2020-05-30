import 'dart:async';

import 'package:flutter/material.dart';

import 'file:///home/lectro/Documents/devSpace/mobile/flutter/oga_box_delivery/lib/screens/intro_screen.dart';

class SplashScreen extends StatefulWidget {
  static const String id = 'SplashScreen';

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  Animation<Color> colorAnimation;
  AnimationController colorController;
  void initState() {
    Timer(Duration(seconds: 5),
        () => Navigator.pushReplacementNamed(context, IntroScreen.id));
    super.initState();

    colorController =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    colorAnimation = ColorTween(
      begin: Color(0xff43cea2),
      end: Color(0xff185a9d),
    ).animate(colorController)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          colorController.reverse();
        } else if (status == AnimationStatus.dismissed) {
          colorController.forward();
        }
      });
    colorController.forward();
  }

  @override
  void dispose() {
    colorController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xff6dd5ed),
                  colorAnimation.value,
                  Color(0xff2193b0),
                  colorAnimation.value,
                ],
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 4,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 60.0,
                        child: Hero(
                          tag: 'Logo',
                          child: FlutterLogo(
                            size: 60.0,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 15.0),
                      ),
                      Text(
                        'Oga_Box',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 22.0),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircularProgressIndicator(
                      backgroundColor: Colors.white,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 25.0),
                    ),
                    Text(
                      'You Connect, We deliver, life is easy',
                      softWrap: true,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                          color: Colors.white),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
