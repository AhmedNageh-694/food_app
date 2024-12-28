import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodapp/Features/cart/data/models/payment_intinet_input_model.dart';
import 'package:foodapp/Features/cart/presentation/manger/payment_cubit.dart';
import 'package:foodapp/Features/cart/presentation/screens/thank_you_screen.dart';
import 'package:foodapp/Features/cart/presentation/screens/widget/customize_checkout_button.dart';
import 'package:foodapp/Features/cart/presentation/screens/widget/payement_details/payment_methode.dart';
import 'package:foodapp/core/utils/service/paypal_service.dart';
import 'package:foodapp/core/utils/styles/fonts/font_colors.dart';

class PaymentBottomSheetBody extends StatelessWidget {
  const PaymentBottomSheetBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 30),
        const Text(
          'Payment Method',
        ),
        const SizedBox(height: 30),
        const PaymentMethods(),
        const SizedBox(
          height: 30,
        ),
        BlocConsumer<PaymentCubit, PaymentState>(
          listener: (context, state) {
            if (state is PaymentLoading) {
              // Display loading
            } else if (state is PaymentSuccess) {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ThankYouScreen(),
                ),
              );
            } else if (state is PaymentFailure) {
              Navigator.of(context).pop();
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(state.errMessage.toString())),
              );
            }
          },
          builder: (context, state) {
            bool isLoading = state is PaymentLoading;
            return CustomizeCheckoutButton(
              isLoading: isLoading,
              onTap: () async {
                if (BlocProvider.of<PaymentCubit>(context).index == 0) {
                  await BlocProvider.of<PaymentCubit>(context)
                      .cardpaymentMethod(
                    paymentIntinetInputModel: PaymentIntinetInputModel(
                        'cus_RJapgVS0iBK60T',
                        amount: '100',
                        currency: 'USD'),
                  );
                } else if (BlocProvider.of<PaymentCubit>(context).index == 1) {
                  PaypalService().makepaypalPayment(context);
                }
              },
              title: "Continue",
              width: 200,
              background: FontColors.checkOutButtonColor,
              height: 70,
            );
          },
        ),
        const SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
