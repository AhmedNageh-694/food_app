import 'package:flutter/material.dart';
import 'package:foodapp/Features/cart/presentation/screens/widget/customize_checkout_button.dart';

class QrCodeRow extends StatelessWidget {
  const QrCodeRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset("assets/image/cart/qurcode_icon.png"),
        const CustomizeCheckoutButton(
          isLoading: false,
          style: TextStyle(
            color: Color(0xFF34A853),
            fontSize: 24,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w600,
            height: 0,
          ),
          height: 58,
          width: 113,
          background: Colors.transparent,
          title: "paid ",
        ),
      ],
    );
  }
}
