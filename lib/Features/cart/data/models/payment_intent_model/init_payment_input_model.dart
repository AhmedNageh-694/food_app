class InitPaymentInputModel {
  final String paymentIntentClientSecret;
  final String customerEphemeralKeySecret;
  final String customerId;

  InitPaymentInputModel(
      {required this.paymentIntentClientSecret,
      required this.customerEphemeralKeySecret,
      required this.customerId});
}
