import 'package:flutter/material.dart';
import 'package:foodapp/Features/cart/presentation/screens/widget/my_cart/order_info_item.dart';
import 'package:foodapp/Features/cart/presentation/screens/widget/thanks/card_info_container.dart';
import 'package:foodapp/Features/cart/presentation/screens/widget/thanks/qr_code_row.dart';
import 'package:foodapp/Features/cart/presentation/screens/widget/thanks/total_row.dart';
import 'package:foodapp/core/utils/styles/font_styles.dart';

class ThankInfo extends StatelessWidget {
  const ThankInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          const SizedBox(
            height: 80,
          ),
          const Text(
            "Thank you!",
            style: FontStyles.blod,
          ),
          Text(
            "Your transaction was successful",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
              height: 0,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          const OrderInfoItem(title: "Date", price: "01/24/2023"),
          const SizedBox(
            height: 20,
          ),
          const OrderInfoItem(title: "Time", price: "10:15 AM"),
          const SizedBox(
            height: 20,
          ),
          const OrderInfoItem(title: "To", price: "Sam Louis"),
          const Divider(
            height: 60,
            color: Color(0xFFC6C6C6),
            endIndent: 20,
            indent: 20,
            thickness: 3,
          ),
          const TotalRow(),
          const SizedBox(
            height: 40,
          ),
          const CardInfoContainer(),
          const SizedBox(
            height: 90,
          ),
          const QrCodeRow()
        ],
      ),
    );
  }
}
