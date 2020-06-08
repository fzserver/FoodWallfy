import 'package:flutter/material.dart';
import 'package:foodwallfy/constants/colors.dart';
import 'package:foodwallfy/constants/frazile.dart';
import 'package:foodwallfy/providers/payments/paymentStripe.dart';
import 'package:foodwallfy/providers/payments/paymentrazorpay.dart';
import 'package:provider/provider.dart';

class Donate extends StatefulWidget {
  @override
  _DonateState createState() => _DonateState();
}

class _DonateState extends State<Donate> {
  @override
  void initState() {
    Provider.of<PaymentRazorPay>(context, listen: false).intialize();
    Provider.of<PaymentStripe>(context, listen: false).intialize();
    super.initState();
  }

  @override
  void dispose() {
    Provider.of<PaymentRazorPay>(context, listen: false).dispose();
    Provider.of<PaymentStripe>(context, listen: false).dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final paymentRazorPay =
        Provider.of<PaymentRazorPay>(context, listen: false);
    final paymentStripe = Provider.of<PaymentStripe>(context, listen: false);
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * .93,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Positioned(
                  top: -(MediaQuery.of(context).size.height * .40),
                  left: -1.0,
                  right: -1.0,
                  child: Container(
                    height: MediaQuery.of(context).size.height * .977125,
                    width: (MediaQuery.of(context).size.width - 22) * .98941176,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: FzColors().getListColors(
                          ["#FF512F", "#DD2476"], // Bloody Mary
                        ),
                        tileMode: TileMode.clamp,
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        stops: [0.0, 1.0],
                      ),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * .05,
                  // left: 0.0,
                  right: MediaQuery.of(context).size.width * .09,
                  // bottom: 0.0,
                  child: Container(
                    height: 50.0,
                    width: 50.0,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: FzColors().getListColors(
                          ["#FFFF00", "#FF6600"], // Yellow Orange
                        ),
                        tileMode: TileMode.clamp,
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        stops: [0.0, 1.0],
                      ),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * .05,
                  left: MediaQuery.of(context).size.width * .09,
                  // right: MediaQuery.of(context).size.width * .09,
                  // bottom: 0.0,
                  child: Container(
                    height: 50.0,
                    width: 50.0,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: FzColors().getListColors(
                          ["#2193B0", "#6DD5ED"], // Sexy Blue
                        ),
                        tileMode: TileMode.clamp,
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        stops: [0.0, 1.0],
                      ),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * .13,
                  left: -(MediaQuery.of(context).size.width * .02),
                  // right: MediaQuery.of(context).size.width * .09,
                  // bottom: 0.0,
                  child: Container(
                    height: 50.0,
                    width: 50.0,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: FzColors().getListColors(
                          ["#CC2B5E", "#753A88"], // Purple Love
                        ),
                        tileMode: TileMode.clamp,
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        stops: [0.0, 1.0],
                      ),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * .13,
                  // left: -(MediaQuery.of(context).size.width * .02),
                  right: -(MediaQuery.of(context).size.width * .02),
                  // bottom: 0.0,
                  child: Container(
                    height: 50.0,
                    width: 50.0,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: FzColors().getListColors(
                          ["#FF5F6D", "#FFC371"],
                        ),
                        tileMode: TileMode.clamp,
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        stops: [0.0, 1.0],
                      ),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * .481,
                  left: -(MediaQuery.of(context).size.width * .07),
                  // right: MediaQuery.of(context).size.width * .30,
                  // bottom: 0.0,
                  child: Container(
                    height: 50.0,
                    width: 50.0,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: FzColors().getListColors(
                          ["#92D000", "#E1EB01"], // Green Sexy
                        ),
                        tileMode: TileMode.clamp,
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        stops: [0.0, 1.0],
                      ),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * .481,
                  // left: 0.0,
                  right: MediaQuery.of(context).size.width * .43,
                  // bottom: 0.0,
                  child: Container(
                    height: 50.0,
                    width: 50.0,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: FzColors().getListColors(
                          ["#F6356F", "#FF5F50"], // Red Sexy
                        ),
                        tileMode: TileMode.clamp,
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        stops: [0.0, 1.0],
                      ),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * .481,
                  // left: -(MediaQuery.of(context).size.width * .07),
                  right: -(MediaQuery.of(context).size.width * .07),
                  // bottom: 0.0,
                  child: Container(
                    height: 50.0,
                    width: 50.0,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: FzColors().getListColors(
                          ["#CC0099", "#6600FF"], // Pink Blue
                        ),
                        tileMode: TileMode.clamp,
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        stops: [0.0, 1.0],
                      ),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * .85,
                  // left: 0.0,
                  right: MediaQuery.of(context).size.width * .43,
                  // bottom: 0.0,
                  child: Container(
                    height: 50.0,
                    width: 50.0,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: FzColors().getListColors(
                          ["#46A3B7", "#86F1DE"], // Blue Sexy
                        ),
                        tileMode: TileMode.clamp,
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        stops: [0.0, 1.0],
                      ),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * .85,
                  left: -(MediaQuery.of(context).size.width * .07),
                  // right: MediaQuery.of(context).size.width * .30,
                  // bottom: 0.0,
                  child: Container(
                    height: 50.0,
                    width: 50.0,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: FzColors().getListColors(
                          ["#52A7EA", "#712E98"], // Violet Sexy
                        ),
                        tileMode: TileMode.clamp,
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        stops: [0.0, 1.0],
                      ),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * .85,
                  // left: -(MediaQuery.of(context).size.width * .07),
                  right: -(MediaQuery.of(context).size.width * .07),
                  // bottom: 0.0,
                  child: Container(
                    height: 50.0,
                    width: 50.0,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: FzColors().getListColors(
                          ["#0099CC", "#99FF66"], // Blue Green
                        ),
                        tileMode: TileMode.clamp,
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        stops: [0.0, 1.0],
                      ),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * .05,
                  left: MediaQuery.of(context).size.width * .05,
                  child: Text(
                    Frazile.donateScreen.toUpperCase(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24.0,
                      letterSpacing: 1.0,
                      wordSpacing: 2.5,
                    ),
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
                      //                       MaterialButton(
                      //   color: Colors.pink,
                      //   onPressed: () => {},
                      //   child: Text(
                      //     'Donate INR 10.00 on Stripe',
                      //     style: TextStyle(
                      //       color: Colors.white,
                      //     ),
                      //   ),
                      //   textColor: Colors.white,
                      // ),
                    ],
                  ),
                ),
                // Center(
                //   child: Text(
                //     'Coming Soon',
                //     style: TextStyle(
                //       color: Colors.indigo,
                //       fontSize: 24.0,
                //       letterSpacing: 2.0,
                //       wordSpacing: 2.5,
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
