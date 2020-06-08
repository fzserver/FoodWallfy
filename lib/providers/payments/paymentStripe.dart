import 'package:flutter/material.dart';
import 'package:stripe_payment/stripe_payment.dart';

class PaymentStripe with ChangeNotifier {
  PaymentStripe();

  void intialize() {
    StripePayment.setOptions(
      StripeOptions(
        publishableKey: "pk_live_DgI2UkdrNcwGI5i6vlfXmqhF00F1wXV4y9",
        merchantId: "Transaction",
        androidPayMode: 'AP1',
      ),
    );
  }

  void openstripe() {
    // StripePayment.crea
  }

  void dispose() {}
}
