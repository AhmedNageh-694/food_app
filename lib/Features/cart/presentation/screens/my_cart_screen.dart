import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodapp/Features/Home/Presentaion/views/views/homeview.dart';
import 'package:foodapp/Features/cart/presentation/screens/widget/my_cart/cart_body.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.only(left: 20),
          child: Center(
            child: GestureDetector(
              onTap: () =>
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => Homeview(),
              )),
              child: FaIcon(
                FontAwesomeIcons.arrowLeftLong,
                size: 35,
              ),
            ),
          ),
        ),
        title: const Text('My-Cart'),
        centerTitle: true,
      ),
      body: const CartBody(),
    );
  }
}
