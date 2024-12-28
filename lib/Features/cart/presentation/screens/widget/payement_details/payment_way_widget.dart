import 'package:flutter/material.dart';

class PaymentWayWidget extends StatelessWidget {
  const PaymentWayWidget({
    super.key,
    required this.imageurl,
    required this.isactive,
  });

  final String imageurl;
  final bool isactive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      height: 62,
      width: 103,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
          side: BorderSide(
            width: 1.5,
            color: isactive ? const Color(0xff34A853) : Colors.grey,
          ),
        ),
      ),
      child: Center(
        child: Image.asset(
          imageurl,
        ),
      ),
    );
  }
}
