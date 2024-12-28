import 'package:flutter/material.dart';
import 'package:flutter_paypal_payment/flutter_paypal_payment.dart';
import 'package:foodapp/Features/cart/presentation/screens/thank_you_screen.dart';
import 'package:foodapp/core/utils/service/secret_keys.dart';

class PaypalService {
  void makepaypalPayment(context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (BuildContext context) => PaypalCheckoutView(
        sandboxMode: true,
        clientId: SecretKeys.clientid,
        secretKey: SecretKeys.paypalsecert,
        transactions: const [
          {
            "amount": {
              "total": '100',
              "currency": "USD",
              "details": {
                "subtotal": '100',
                "shipping": '0',
                "shipping_discount": 0
              }
            },
            "description": "The payment transaction description.",
            // "payment_options": {
            //   "allowed_payment_method":
            //       "INSTANT_FUNDING_SOURCE"
            // },
            "item_list": {
              "items": [
                {
                  "name": "Apple",
                  "quantity": 4,
                  "price": '5',
                  "currency": "USD"
                },
                {
                  "name": "Pineapple",
                  "quantity": 8,
                  "price": '10',
                  "currency": "USD"
                }
              ],

              // shipping address is not required though
              //   "shipping_address": {
              //     "recipient_name": "tharwat",
              //     "line1": "Alexandria",
              //     "line2": "",
              //     "city": "Alexandria",
              //     "country_code": "EG",
              //     "postal_code": "21505",
              //     "phone": "+00000000",
              //     "state": "Alexandria"
              //  },
            }
          }
        ],
        note: "Contact us for any questions on your order.",
        onSuccess: (Map params) async {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) {
              return ThankYouScreen();
            },
          ));
          debugPrint(
              "\n \n \n onSuccess========================================: ${params.toString()}");
        },
        onError: (error) {
          debugPrint("onError=========================================: $error");
          Navigator.of(context).pop();
        },
        onCancel: () {
          debugPrint(
              '===================================================cancelled:');
        },
      ),
    ));
  }
}
