import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:flutter/material.dart';
import 'package:foodwallfy/constants/colors.dart';
import 'package:foodwallfy/constants/frazile.dart';
import 'package:foodwallfy/mixin/portrait.dart';
import 'package:foodwallfy/pages/about/About.dart';
import 'package:foodwallfy/pages/donate/Donate.dart';
import 'package:foodwallfy/pages/home/homePage.dart';
import 'package:foodwallfy/pages/image/FullImage.dart';
import 'package:foodwallfy/pages/settings/Settings.dart';
import 'package:foodwallfy/providers/provider.dart';
import 'package:provider/provider.dart';

class ConfigPage extends StatefulWidget {
  @override
  _ConfigPageState createState() => _ConfigPageState();
}

class _ConfigPageState extends State<ConfigPage>
    with PortraitStatefulModeMixin<ConfigPage> {
  FirebaseAnalytics analytics = FirebaseAnalytics();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return MultiProvider(
      providers: Providers.providers(),
      child: MaterialApp(
        title: Frazile.appName,
        debugShowCheckedModeBanner: false,
        navigatorObservers: [
          FirebaseAnalyticsObserver(analytics: analytics),
        ],
        theme: ThemeData(
          fontFamily: Frazile.googleFamily,
          primarySwatch: Colors.red,
          primaryColor: FzColors.appColor,
          canvasColor: FzColors.canvasColor,
          primaryIconTheme: IconThemeData(
            color: FzColors.iconColor,
          ),
          // disabledColor: Colors.grey,
          cardColor: Colors.white,
          primaryTextTheme: Theme.of(context).textTheme.apply(
                bodyColor: FzColors.textColor,
                displayColor: FzColors.textColor,
              ),
          // brightness: Brightness.light,
        ),
        initialRoute: Frazile.home,
        routes: {
          Frazile.home: (BuildContext context) => HomePage(),
          Frazile.fullImage: (BuildContext context) => FullImage(),
          Frazile.about: (BuildContext context) => About(),
          Frazile.settings: (BuildContext context) => Settings(),
          Frazile.donate: (BuildContext context) => Donate(),
        },
      ),
    );
  }
}
