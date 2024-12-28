import 'package:flutter/material.dart';

class RightIcon extends StatelessWidget {
  const RightIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Positioned(
      left: 0,
      right: 0,
      top: 9,
      child: CircleAvatar(
        radius: 50,
        backgroundColor: Color(0xFFD9D9D9),
        child: CircleAvatar(
          backgroundColor: Color(0xff34A853),
          radius: 40,
          child: Icon(
            Icons.check,
            color: Colors.white,
            size: 60,
            weight: 100,
          ),
        ),
      ),
    );
  }
}
