import 'package:foodwallfy/providers/payments/paymentrazorpay.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import 'fetchfoodwalls.dart';

class Providers {
  static List<SingleChildWidget> providers() => [
        ChangeNotifierProvider<FoodWalls>(
          create: (_) => FoodWalls(),
        ),
        ChangeNotifierProvider<PaymentRazorPay>(
          create: (_) => PaymentRazorPay(),
        ),
      ];
}
