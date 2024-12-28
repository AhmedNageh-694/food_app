
import 'package:dartz/dartz.dart';
import 'package:foodapp/Features/cart/data/models/payment_intinet_input_model.dart';
import 'package:foodapp/core/error/faliures.dart';

abstract class CheckoutRepo {
  Future<Either<Faliure, void>> makePayment(
      {required PaymentIntinetInputModel paymentIntinetInputModel});
}
