import 'package:dartz/dartz.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:foodapp/Features/cart/data/models/payment_intinet_input_model.dart';
import 'package:foodapp/Features/cart/presentation/repo/checkout_repo.dart';
import 'package:foodapp/core/error/faliures.dart';
import 'package:foodapp/core/utils/service/stripe_services.dart';

class CheckoutRepoImplement implements CheckoutRepo {
  final StripeServices stripeServices = StripeServices();
  @override
  Future<Either<Faliure, void>> makePayment(
      {required PaymentIntinetInputModel paymentIntinetInputModel}) async {
    try {
      await stripeServices.makePaymet(
          paymentIntinetInputModel: paymentIntinetInputModel);
      return const Right(null);
    } on StripeException catch (e) {
      return Left(Faliure(errMessage: e.error.message.toString()));
    } catch (e) {
      return Left(Faliure(errMessage: e.toString()));
    }
  }
}
