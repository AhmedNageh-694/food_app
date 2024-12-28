import 'package:flutter/material.dart';
import 'package:foodapp/core/utils/styles/font_styles.dart';

class OrderInfoItem extends StatelessWidget {
  const OrderInfoItem({
    super.key,
    required this.title,
    required this.price,
  });
  final String title;
  final String price;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: FontStyles.subtitle),
        Text(price, style: FontStyles.subtitle2),
      ],
    );
  }
}
// width: 350px;
// height: 73px;
// top: 725px;
// left: 20px;
// gap: 0px;
// border-radius: 15px 0px 0px 0px;
// opacity: 0px;
