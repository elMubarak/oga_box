import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:ogaboxdelivery/screens/sign_up_screen.dart';

import 'home_screen.dart';

class LogInScreen extends StatefulWidget {
  static const String id = 'LogInScreen';

  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen>
    with TickerProviderStateMixin {
  Animation<Color> colorAnimation;
  AnimationController colorController;
  void initState() {
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
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
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
          child: Container(
            margin: EdgeInsets.all(25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: 120,
                  width: 120,
                  child: Center(
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 40.0,
                      child: Hero(
                        tag: 'Logo',
                        child: FlutterLogo(
                          size: 50.0,
                          colors: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                ),
                TextField(
                  cursorColor: Colors.grey,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: 'User Name',
                    hintStyle: TextStyle(
                      color: Colors.white,
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(25.0)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(25.0)),
                    disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(25.0)),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(25.0)),
//                  filled: true,
//                  fillColor: Colors.blueAccent.withOpacity(0.15),
                  ),
                ),
                TextField(
                  cursorColor: Colors.grey,
                  obscureText: true,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: TextStyle(
                      color: Colors.white,
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(25.0)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(25.0)),
                    disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(25.0)),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(25.0)),
//                  filled: true,
//                  fillColor: Colors.blueAccent.withOpacity(0.15),
                  ),
                ),
                FlatButton(
                  highlightColor: Color(0xff42a5f5).withOpacity(0.1),
                  hoverColor: Color(0xff42a5f5).withOpacity(0.1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0)),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, HomeScreen.id);
                  },
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(19.0),
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                        color: Color(0xff2193b0),
                      ),
                    ),
                  ),
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).pushNamed(SignUpScreen.id);
                  },
                  child: Text(
                    'Don\'t have an account? Sign Up now',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                FlatButton(
                  onPressed: () {},
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
