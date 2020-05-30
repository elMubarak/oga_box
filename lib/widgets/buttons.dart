import 'package:flutter/material.dart';

//ActionButtons
class ActionIcons extends StatelessWidget {
  const ActionIcons({
    Key key,
    @required this.icon,
    this.color,
    this.opacityColor,
    @required this.onTap,
  }) : super(key: key);
  final IconData icon;
  final Color color;
  final Color opacityColor;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      shape: CircleBorder(),
      clipBehavior: Clip.hardEdge,
      color: opacityColor,
      child: InkWell(
        onTap: onTap,
        child: Container(
          width: 36.5,
          height: 36.5,
          margin: EdgeInsets.only(left: 8.0, right: 8.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: Icon(
            icon,
            color: color,
          ),
        ),
      ),
    );
  }
}
