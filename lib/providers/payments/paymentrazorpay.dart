import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

class PaymentRazorPay with ChangeNotifier {
  PaymentRazorPay();
  Razorpay _razorpay;

  void intialize() {
    _razorpay = Razorpay();
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
  }

  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    Fluttertoast.showToast(
      msg: "SUCCESS: " + response.paymentId,
      timeInSecForIosWeb: 4,
    );
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    Fluttertoast.showToast(
      msg: "ERROR: " + response.code.toString() + " - " + response.message,
      timeInSecForIosWeb: 4,
    );
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    Fluttertoast.showToast(
      msg: "EXTERNAL_WALLET: " + response.walletName,
      timeInSecForIosWeb: 4,
    );
  }

  openCheckout(int amount, String currency, contact, email, receipt,
      {String name = 'Donate', desc = 'Donation'}) async {
    var options = {
      'key': 'rzp_live_tH6FiVUcs8nlTt',
      'amount': amount,
      'currency': currency,
      'name': name,
      'description': desc,
      // 'prefill': {'contact': contact, 'email': email},
      'external': {
        'wallets': ['paytm']
      },
      'payment_capture': '1',
      "receipt": receipt,
    };

    try {
      _razorpay.open(options);
    } catch (e) {
      debugPrint(e);
    }
  }

  void disposilize() {
    _razorpay.clear();
  }
}
