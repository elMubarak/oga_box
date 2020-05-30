import 'package:flutter/material.dart';

class walkthrough extends StatefulWidget {
  final title;
  final content;
  final imageIcon;

  walkthrough({
    this.title,
    this.content,
    this.imageIcon,
  });

  @override
  walkthroughState createState() {
    return walkthroughState();
  }
}

class walkthroughState extends State<walkthrough>
    with SingleTickerProviderStateMixin {
  Animation animation;
  AnimationController animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    animation = Tween(begin: -250.0, end: 0.0).animate(
        CurvedAnimation(parent: animationController, curve: Curves.easeInOut));

    animation.addListener(() => setState(() {}));

    animationController.forward();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: <Widget>[
          new Container(
            width: double.infinity,
            padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 40.0),
            child: Material(
              animationDuration: Duration(milliseconds: 500),
              elevation: 2.0,
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              child: Container(
                padding: EdgeInsets.only(top: 50.0, bottom: 20.0),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 30.0, bottom: 15.0, left: 15.0, right: 15.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      new Transform(
                        transform: new Matrix4.translationValues(
                            animation.value, 0.0, 0.0),
                        child: new Text(
                          widget.title,
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                      SizedBox(
                        height: 25.0,
                      ),
                      new Transform(
                        transform: new Matrix4.translationValues(
                            animation.value, 0.0, 0.0),
                        child: new Text(widget.content,
                            softWrap: true,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 15.0,
                                color: Color(0xff000a17))),
                      ),
                      SizedBox(
                        height: 45.0,
                      ),
                      Transform(
                        transform: new Matrix4.translationValues(
                            animation.value, 5.0, 0.5),
                        child: new Icon(
                          widget.imageIcon,
                          size: 100.0,
                          color: Color(0xff6dd5ed),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: CircleAvatar(
                backgroundColor: Color(0xff6dd5ed),
                radius: 45.0,
                child: Hero(
                  tag: 'Logo',
                  child: FlutterLogo(
                    textColor: Colors.white,
                    colors: Colors.orange,
                    size: 43.0,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
