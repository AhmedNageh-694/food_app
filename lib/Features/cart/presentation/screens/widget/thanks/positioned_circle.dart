import 'package:flutter/material.dart';

class PositionedCircle extends StatelessWidget {
  const PositionedCircle({
    super.key,
    required this.context,
    required this.left,
    required this.right,
  });

  final BuildContext context;
  final double left;
  final double right;

  @override
  Widget build(BuildContext context) {
    double bottomPosition = MediaQuery.of(context).size.height * .2;

    // Create the CircleAvatar
    Widget circleAvatar = const CircleAvatar(
      backgroundColor: Colors.white,
    );

    if (left == 0) {
      return Positioned(
        right: right,
        bottom: bottomPosition,
        child: circleAvatar,
      );
    } else if (right == 0) {
      return Positioned(
        left: left,
        bottom: bottomPosition,
        child: circleAvatar,
      );
    }

    // Return an empty Positioned widget if neither condition is met
    return Positioned(
      child: circleAvatar,
    );
  }
}
