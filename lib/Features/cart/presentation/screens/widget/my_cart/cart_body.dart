import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodapp/Features/cart/presentation/manger/payment_cubit.dart';
import 'package:foodapp/Features/cart/presentation/repo/checkout_repo_implement.dart';
import 'package:foodapp/Features/cart/presentation/screens/widget/customize_checkout_button.dart';
import 'package:foodapp/Features/cart/presentation/screens/widget/my_cart/order_info_item.dart';
import 'package:foodapp/Features/cart/presentation/screens/widget/my_cart/pyament_buttom_sheet_body.dart';

class CartBody extends StatelessWidget {
  const CartBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 20,
              right: 56,
              left: 56,
            ),
            child: Center(
                child: Expanded(
              child: Image.asset(
                "assets/image/cart/mycart.png",
              ),
            )),
          ),
          const SizedBox(
            height: 18,
          ),
          const OrderInfoItem(title: r"Order Subtotal:", price: r"$42.97"),
          const SizedBox(
            height: 3,
          ),
          const OrderInfoItem(title: r"Discount:", price: r"$0"),
          const SizedBox(
            height: 3,
          ),
          const OrderInfoItem(title: r"Shipping:", price: r"$8"),
          const SizedBox(
            height: 8,
          ),
          const Divider(
            color: Color(0xffC7C7C7),
            thickness: 3,
            indent: 30,
            endIndent: 30,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Total: ',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              Text('\$50.97', style: TextStyle(fontSize: 24)),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          CustomizeCheckoutButton(
            isLoading: false,
            height: 73,
            background: const Color(0xff34A853),
            width: 350,
            title: "Complete Payment",
            onTap: () {
              // GoRouter.of(context).push(AppRouter.kPaymentDetailsScreen);
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return BlocProvider(
                    create: (context) => PaymentCubit(CheckoutRepoImplement()),
                    child: const PaymentBottomSheetBody(),
                  );
                },
              );
            },
          )
        ],
      ),
    );
  }
}
