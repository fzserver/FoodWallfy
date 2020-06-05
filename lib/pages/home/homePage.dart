import 'package:cached_network_image/cached_network_image.dart';
import 'package:firebase_admob/firebase_admob.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:foodwallfy/animations/grid.dart';
import 'package:foodwallfy/constants/colors.dart';
import 'package:foodwallfy/constants/frazile.dart';
import 'package:foodwallfy/constants/menuItems.dart';
import 'package:foodwallfy/pages/image/FullArguments.dart';
import 'package:foodwallfy/providers/fetchfoodwalls.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static final MobileAdTargetingInfo targetInfo = MobileAdTargetingInfo(
    testDevices: <String>[],
    keywords: <String>[
      'WALLPAPERS',
      'WALLS',
      'AMOLED',
      'Clothing',
      'Food',
      'Juices'
    ],
    childDirected: true,
  );

  BannerAd _bannerAd;
  InterstitialAd _interstitialAd;

  BannerAd createBannerAd() => BannerAd(
      adUnitId: "ca-app-pub-3595684883769922/7247005176",
      size: AdSize.smartBanner,
      targetingInfo: targetInfo,
      listener: (MobileAdEvent event) {
        print("Banner event : $event");
      });

  InterstitialAd createInterstitialAd() => InterstitialAd(
      adUnitId: "ca-app-pub-3595684883769922/2499280803",
      targetingInfo: targetInfo,
      listener: (MobileAdEvent event) {
        print("Banner event : $event");
      });

  @override
  void initState() {
    super.initState();
    FirebaseAdMob.instance
        .initialize(appId: "ca-app-pub-3595684883769922~4812413525");
    _bannerAd = createBannerAd()
      ..load()
      ..show();
    Provider.of<FoodWalls>(context, listen: false).fetchData();
  }

  @override
  void dispose() {
    _bannerAd?.dispose();
    _interstitialAd?.dispose();
    super.dispose();
  }

  _loadmore() async {
    // Frazile.page = Frazile.page + 1;
    // await wallBloc.fetchImages(page: Frazile.page);
    // isLoading = false;
  }

  @override
  Widget build(BuildContext context) {
    final foods = Provider.of<FoodWalls>(context);
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * .93,
            child: foods.isFetching
                ? Center(
                    child: Frazile().gradientLoader(),
                  )
                : foods.getResponseJson() != null
                    ? Stack(
                        fit: StackFit.expand,
                        children: [
                          Positioned(
                            top: -(MediaQuery.of(context).size.height * .40),
                            left: -1.0,
                            right: -1.0,
                            child: Container(
                              height:
                                  MediaQuery.of(context).size.height * .977125,
                              width: (MediaQuery.of(context).size.width - 22) *
                                  .98941176,
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
                              Frazile.appName.toUpperCase(),
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24.0,
                                letterSpacing: 1.0,
                                wordSpacing: 2.5,
                              ),
                            ),
                          ),
                          Positioned(
                            top: MediaQuery.of(context).size.height * .035,
                            right: MediaQuery.of(context).size.width * .02,
                            child: PopupMenuButton<MenuItems>(
                              elevation: 3.0,
                              onCanceled: () => {},
                              tooltip: "Menu",
                              onSelected: selectedMenuItem,
                              itemBuilder: (BuildContext context) {
                                return menu.map((MenuItems menuItem) {
                                  return PopupMenuItem<MenuItems>(
                                    value: menuItem,
                                    child: Text(menuItem.title),
                                  );
                                }).toList();
                              },
                            ),
                          ),
                          Positioned(
                            top: MediaQuery.of(context).size.height * .11,
                            left: 10.0,
                            right: 10.0,
                            bottom: 0.0,
                            child: GridAnimate(
                              Container(
                                height: MediaQuery.of(context).size.height,
                                width: MediaQuery.of(context).size.width,
                                child: NotificationListener<ScrollNotification>(
                                  onNotification:
                                      (ScrollNotification scrolling) {
                                    // if (!isLoading &&
                                    //     scrolling.metrics.pixels ==
                                    //         scrolling.metrics.maxScrollExtent) {
                                    //   _loadmore();
                                    //   setState(() {
                                    //     isLoading = true;
                                    //   });
                                    // }
                                    // return isLoading;
                                  },
                                  child: StaggeredGridView.countBuilder(
                                    crossAxisCount: 4,
                                    crossAxisSpacing: 10.0,
                                    mainAxisSpacing: 10.0,
                                    physics: AlwaysScrollableScrollPhysics(),
                                    itemCount: foods.getResponseJson().length,
                                    itemBuilder: (c, i) => InkWell(
                                      onTap: () {
                                        createInterstitialAd()
                                          ..load()
                                          ..show();
                                        Navigator.pushNamed(
                                          context,
                                          Frazile.fullImage,
                                          arguments: FullImageArguments(
                                            foods
                                                .getResponseJson()[i]
                                                .urls
                                                .full,
                                            foods
                                                .getResponseJson()[i]
                                                .urls
                                                .regular,
                                          ),
                                        );
                                      },
                                      child: Hero(
                                        tag: foods.getResponseJson()[i].id,
                                        child: Container(
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(
                                              10.0,
                                            ),
                                            child: CachedNetworkImage(
                                              fadeInCurve: Curves.easeInCubic,
                                              fadeInDuration:
                                                  Duration(milliseconds: 900),
                                              imageUrl: foods
                                                  .getResponseJson()[i]
                                                  .urls
                                                  .regular,
                                              alignment: Alignment.center,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          decoration: BoxDecoration(
                                            color: Colors.pink,
                                            borderRadius: BorderRadius.circular(
                                              10.0,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    staggeredTileBuilder: (i) =>
                                        StaggeredTile.count(
                                            2, i.isEven ? 2 : 3),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: MediaQuery.of(context).size.width * .1,
                            right: MediaQuery.of(context).size.width * .1,
                            bottom: MediaQuery.of(context).size.height * .02,
                            child: foods.isFetching
                                ? SpinKitChasingDots(
                                    size: 80.0,
                                    itemBuilder: (context, index) =>
                                        DecoratedBox(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        gradient: LinearGradient(
                                          colors: FzColors().getListColors(
                                            [
                                              "#9400D3",
                                              "#4B0082",
                                              "#0000FF",
                                              "#00FF00",
                                              "#FFFF00",
                                              "#FF7F00",
                                              "#FF0000"
                                            ],
                                          ),
                                          tileMode: TileMode.clamp,
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                          stops: [
                                            0.0,
                                            0.14285714285714285,
                                            0.2857142857142857,
                                            0.42857142857142855,
                                            0.5714285714285714,
                                            0.7142857142857143,
                                            0.8571428571428571
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                : Container(),
                          ),
                        ],
                      )
                    : Center(
                        child: Text('Server Error!'),
                      ),
          ),
        ],
      ),
    );
  }

  void selectedMenuItem(MenuItems menu) {
    switch (menu.id) {
      case 0:
        Navigator.pushNamed(context, Frazile.about);
        break;
      case 1:
        Navigator.pushNamed(context, Frazile.settings);
        break;
      case 2:
        Navigator.pushNamed(context, Frazile.donate);
        break;
    }
  }

  static const List<MenuItems> menu = const <MenuItems>[
    const MenuItems(id: 0, title: 'About'),
    const MenuItems(id: 1, title: 'Settings'),
    const MenuItems(id: 2, title: 'Donate'),
  ];
}
