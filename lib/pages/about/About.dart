import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:foodwallfy/constants/colors.dart';
import 'package:foodwallfy/constants/frazile.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) => Scaffold(
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
                      width:
                          (MediaQuery.of(context).size.width - 22) * .98941176,
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
                      Frazile.aboutScreen.toUpperCase(),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24.0,
                        letterSpacing: 1.0,
                        wordSpacing: 2.5,
                      ),
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * .15,
                    left: 20.0,
                    right: 20.0,
                    child: Container(
                      height: MediaQuery.of(context).size.height * .75,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: FzColors().hexToColor('#FF6600'),
                            blurRadius:
                                20.0, // has the effect of softening the shadow
                            spreadRadius:
                                5.0, // has the effect of extending the shadow
                          ),
                        ],
                        color: Colors.pink[400],
                        borderRadius: BorderRadius.circular(
                          20.0,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Food Wallfy is a collection of Food Wallpapers.',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22.0,
                            ),
                            maxLines: 3,
                            textAlign: TextAlign.center,
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * .09,
                            width: MediaQuery.of(context).size.width * .8,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.white,
                                  blurRadius:
                                      10.0, // has the effect of softening the shadow
                                  spreadRadius:
                                      2.0, // has the effect of extending the shadow
                                ),
                              ],
                              color: Colors.pink[100],
                              borderRadius: BorderRadius.circular(
                                20.0,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'Github',
                                  style: TextStyle(
                                    color: Colors.pink[900],
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  'http://bit.ly/fdgithub',
                                  style: TextStyle(
                                    color: Colors.pink[600],
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * .4,
                            width: MediaQuery.of(context).size.width * .8,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.white,
                                  blurRadius:
                                      10.0, // has the effect of softening the shadow
                                  spreadRadius:
                                      2.0, // has the effect of extending the shadow
                                ),
                              ],
                              color: Colors.pink[100],
                              borderRadius: BorderRadius.circular(
                                20.0,
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'Contributors',
                                  style: TextStyle(
                                    color: Colors.pink[900],
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * .74,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      CircleAvatar(
                                        backgroundColor: Colors.orange,
                                        backgroundImage: NetworkImage(
                                          'http://bit.ly/fwpic',
                                        ),
                                        minRadius: 40.0,
                                        maxRadius: 50.0,
                                      ),
                                    ],
                                  ),
                                ),
                                Text(
                                  'Parth Aggarwal',
                                  style: TextStyle(
                                    color: Colors.pink[600],
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  'Flutter Developer',
                                  style: TextStyle(
                                    color: Colors.pink[600],
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
}
