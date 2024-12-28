class PaymentIntinetInputModel {
  final String amount;
  final String currency;
  final String customerid;
  PaymentIntinetInputModel(this.customerid,
      {required this.amount, required this.currency});

  toJson() {
    return {
      'amount': '${amount}00',
      'currency': currency,
      'customer': customerid,
    };
  }
}
