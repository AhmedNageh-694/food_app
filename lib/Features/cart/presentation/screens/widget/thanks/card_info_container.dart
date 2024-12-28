import 'package:flutter/material.dart';

class CardInfoContainer extends StatelessWidget {
  const CardInfoContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 305,
      height: 73,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: Row(
        children: [
          const SizedBox(
            width: 22,
          ),
          Image.asset(
            "assets/image/cart/logo.png",
          ),
          const SizedBox(
            width: 22,
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Credit Card",
              ),
              Text(
                "Mastercard **78 ",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
