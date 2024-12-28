import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodapp/Features/cart/presentation/manger/payment_cubit.dart';
import 'package:foodapp/Features/cart/presentation/screens/widget/payement_details/payment_way_widget.dart';

class PaymentMethods extends StatefulWidget {
  const PaymentMethods({super.key});

  @override
  State<PaymentMethods> createState() => _PaymentMethodsState();
}

class _PaymentMethodsState extends State<PaymentMethods> {
  final List<String> paymentmethodItem = const [
    "assets/image/cart/cardpayment.png",
    "assets/image/cart/paypal.png",
  ];

  int itemindex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ListView.builder(
        itemCount: paymentmethodItem.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                itemindex = index;
              });
              BlocProvider.of<PaymentCubit>(context).index = itemindex;
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: PaymentWayWidget(
                imageurl: paymentmethodItem[index],
                isactive: itemindex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
