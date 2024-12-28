import 'package:dio/dio.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:foodapp/Features/cart/data/models/ephemeral_key/ephemeral_key.dart';
import 'package:foodapp/Features/cart/data/models/payment_intent_model/init_payment_input_model.dart';
import 'package:foodapp/Features/cart/data/models/payment_intent_model/payment_intent_model.dart';
import 'package:foodapp/Features/cart/data/models/payment_intinet_input_model.dart';
import 'package:foodapp/core/utils/service/api_service.dart';
import 'package:foodapp/core/utils/service/secret_keys.dart';

class StripeServices {
  final baseurl = 'https://api.stripe.com/v1/';
  final ApiService apiService = ApiService();
  Future<PaymentIntentModel> createpaymentIntent(
      PaymentIntinetInputModel paymentIntinetInputModel) async {
    var resposne = await apiService.post(
      url: "${baseurl}payment_intents",
      contentType: Headers.formUrlEncodedContentType,
      body: paymentIntinetInputModel.toJson(),
      token: SecretKeys.secret,
    );
    var paymentintentModel = PaymentIntentModel.fromJson(resposne.data);
    return paymentintentModel;
  }

  Future initPaymentSheet(
      {required InitPaymentInputModel initPaymentInputModel}) async {
    await Stripe.instance.initPaymentSheet(
        paymentSheetParameters: SetupPaymentSheetParameters(
      merchantDisplayName: 'Ahmed Elsharkawy',
      paymentIntentClientSecret:
          initPaymentInputModel.paymentIntentClientSecret,
      customerId: initPaymentInputModel.customerId,
      customerEphemeralKeySecret:
          initPaymentInputModel.customerEphemeralKeySecret,
    ));
  }

  Future displayPaymentSheet() async {
    await Stripe.instance.presentPaymentSheet();
  }

  Future makePaymet(
      {required PaymentIntinetInputModel paymentIntinetInputModel}) async {
    var paymentIntetModel = await createpaymentIntent(paymentIntinetInputModel);

    var paymentEphemeralKey = await creatEphemeralKey(
        customerid: paymentIntinetInputModel.customerid);
    await initPaymentSheet(
      initPaymentInputModel: InitPaymentInputModel(
          paymentIntentClientSecret: paymentIntetModel.clientSecret!,
          customerEphemeralKeySecret: paymentEphemeralKey.secret!,
          customerId: paymentIntinetInputModel.customerid),
    );

    await displayPaymentSheet();
  }

  Future<EphemeralKey> creatEphemeralKey({required String customerid}) async {
    var resposne = await apiService.post(
      url: "${baseurl}ephemeral_keys",
      contentType: Headers.formUrlEncodedContentType,
      body: {'customer': customerid},
      token: SecretKeys.secret,
      headers: {
        'Stripe-Version': '2024-10-28.acacia',
        'Authorization': 'Bearer ${SecretKeys.secret}',
      },
    );

    var ephemeralkey = EphemeralKey.fromJson(resposne.data);
    return ephemeralkey;
  }
}
