import 'package:flutter/material.dart';
import 'package:foodapp/Features/cart/presentation/screens/widget/thanks/back_arrow_button.dart';
import 'package:foodapp/Features/cart/presentation/screens/widget/thanks/customize_paint_dashline.dart';
import 'package:foodapp/Features/cart/presentation/screens/widget/thanks/positioned_circle.dart';
import 'package:foodapp/Features/cart/presentation/screens/widget/thanks/right_icon.dart';
import 'package:foodapp/Features/cart/presentation/screens/widget/thanks/upper_thank_body.dart';

class ThankYouScreen extends StatelessWidget {
  const ThankYouScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(top: 50, right: 20, left: 20, bottom: 35),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            const BackArrowButton(),
            const ThankInfoBody(),
            const RightIcon(),
            PositionedCircle(context: context, left: -20, right: 0),
            PositionedCircle(context: context, left: 0, right: -20),
            const CustomizeDotLineWithTwoCircle(),
          ],
        ),
      ),
    );
  }
}
