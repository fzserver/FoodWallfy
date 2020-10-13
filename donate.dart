Positioned(
                  top: MediaQuery.of(context).size.height * .11,
                   left: 10.0,
                  right: 10.0,
                  bottom: 0.0,
                  child: Column(
                     mainAxisAlignment: MainAxisAlignment.start,
                     crossAxisAlignment: CrossAxisAlignment.center,
                     mainAxisSize: MainAxisSize.min,
                   children: [
                     FittedBox(
                         child: DonateItem(
                           image: 'comedy',
                           gradient: FzGradients.redSexyGradient,
                          title: 'Donate \$1 by RazorPay',
                           color: FzGradients.redSexyGradient.colors[0],
                           animation: animation,
                           paymentMode: 'RazorPay',
                         ),
                       ),
                       SizedBox(
                         height: 10.0,
                       ),
                       FittedBox(
                         child: DonateItem(
                           image: 'action',
                           gradient: FzGradients.greenSexyGradient,
                           title: 'Buy me a beer by RazorPay for \$10',
                          color: FzGradients.greenSexyGradient.colors[0],
                          animation: animation,
                          paymentMode: 'RazorPay',
                         ),
                   ),
                       SizedBox(
                         height: 10.0,
                       ),
                      FittedBox(
                         child: DonateItem(
                           image: 'romance',
                           gradient: FzGradients.pinkRedGradient,
                           title: 'Buy me a iPhone by IAP for \$200',
                           color: FzGradients.pinkRedGradient.colors[0],
                           animation: animation,
                           paymentMode: 'IAP',
                         ),
                       ),
                       SizedBox(
                         height: 10.0,
                       ),
                       FittedBox(
                         child: DonateItem(
                           image: 'horror',
                           gradient: FzGradients.skyBlueGradient,
                           title: 'Buy me a MacBook by IAP for \$2000',
                          color: FzGradients.skyBlueGradient.colors[0],
                           animation: animation,
                           paymentMode: 'IAP',
                         ),
                       ),
                     ],
                   ),
                 ),
                 Center(
                   child: Column(
                    children: [
                       MaterialButton(
                         color: Colors.pink,
                         onPressed: () => paymentRazorPay.openCheckout(
                             1000,
                             'INR',
                             '9988446981',
                             'frazile.com@gmail.com',
                             'donate1'),
                         child: Text(
                           'Donate INR 10.00 on RazorPay',
                          style: TextStyle(
                             color: Colors.white,
                           ),
                         ),
                         textColor: Colors.white,
                       ),
                                       MaterialButton(
                   color: Colors.pink,
                   onPressed: () => {},
                   child: Text(
                     'Donate INR 10.00 on Stripe',
                     style: TextStyle(
                       color: Colors.white,
                     ),
                   ),
                   textColor: Colors.white,
                 ),
                 ],
                 ),
                 ),
                 Center(
                   child: Text(
                     'Coming Soon',
                     style: TextStyle(
                       color: Colors.indigo,
                       fontSize: 24.0,
                      letterSpacing: 2.0,
                       wordSpacing: 2.5,
                     ),
                   ),
                 ),