// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:in_app_purchase/in_app_purchase.dart';

// class PaymentInAppPurchases with ChangeNotifier {
//   PaymentInAppPurchases();

//   /// IAP Plugin Interface
//   InAppPurchaseConnection _iap = InAppPurchaseConnection.instance;

//   /// Is the API available on the device
//   bool _available = true;

//   /// Products for Sale
//   List<IAPProductDetails> _products = [];

//   /// Past Purchases
//   List<IAPPurchaseDetails> _purchases = [];

//   /// Updates to purchases
//   StreamSubscription _subscription;

//   /// Consumable credits the user can buy
//   int _credits = 0;

//   void initialize() async {
//     /// check availibility of In App Purchases
//     _available = await _iap.isAvailable();

//     if (_available) {
//       await _getProducts();
//       await _getPastPurchses();
//     }
//   }

//   void products() {
//     for (var prod in _products)
//       /// UI if already purchased
//       if (_hasPurchased(prod.id) != null)
//         ...[

//         ];
//         /// UI if NOT purchased
//         else
//           ...[];
//   }

//   void disposialize() {
//     _subscription.cancel();
//   }
// }
