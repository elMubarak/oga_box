import 'package:flutter/material.dart';

import 'file:///home/lectro/Documents/devSpace/mobile/flutter/oga_box_delivery/lib/utils/utilities.dart';
import 'file:///home/lectro/Documents/devSpace/mobile/flutter/oga_box_delivery/lib/widgets/walkthrough.dart';

import 'log_in_screen.dart';

class IntroScreen extends StatefulWidget {
  static const String id = 'IntroScreen';
  @override
  IntroScreenState createState() {
    return IntroScreenState();
  }
}

class IntroScreenState extends State<IntroScreen>
    with TickerProviderStateMixin {
  Animation<Color> colorAnimation;
  AnimationController colorController;

  //
  @override
  void initState() {
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
    super.initState();
  }

  final PageController pageController = new PageController();
  int currentPage = 0;
  bool lastPage = false;

  void _onPageChanged(int page) {
    setState(() {
      currentPage = page;
      if (currentPage == 3) {
        lastPage = true;
      } else {
        lastPage = false;
      }
    });
  }

  @override
  void dispose() {
    colorController.dispose();
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(),
          ),
          Expanded(
            flex: 3,
            child: PageView(
              children: <Widget>[
                walkthrough(
                  title: Flutkart.wt1,
                  content: Flutkart.wc1,
                  imageIcon: Icons.mobile_screen_share,
                ),
                walkthrough(
                  title: Flutkart.wt2,
                  content: Flutkart.wc2,
                  imageIcon: Icons.map,
                ),
                walkthrough(
                  title: Flutkart.wt3,
                  content: Flutkart.wc3,
                  imageIcon: Icons.camera_alt,
                ),
                walkthrough(
                  title: Flutkart.wt4,
                  content: Flutkart.wc4,
                  imageIcon: Icons.notifications_active,
                ),
              ],
              controller: pageController,
              onPageChanged: _onPageChanged,
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                FlatButton(
                  child: Text(lastPage ? "" : Flutkart.skip,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0)),
                  onPressed: () => lastPage
                      ? null
                      : Navigator.pushReplacementNamed(context, LogInScreen.id),
                ),
                FlatButton(
                  child: Text(lastPage ? Flutkart.gotIt : Flutkart.next,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0)),
                  onPressed: () => lastPage
                      ? Navigator.pushReplacementNamed(context, LogInScreen.id)
                      : pageController.nextPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeIn),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
