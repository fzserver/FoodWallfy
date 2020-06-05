import 'dart:io';
import 'dart:math';
import 'dart:typed_data';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:esys_flutter_share/esys_flutter_share.dart';
import 'package:file_utils/file_utils.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:foodwallfy/constants/colors.dart';
import 'package:foodwallfy/pages/image/FullArguments.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:wallpaper/wallpaper.dart';
import 'package:http/http.dart' as http;

class FullImage extends StatefulWidget {
  @override
  _FullImageState createState() => _FullImageState();
}

class _FullImageState extends State<FullImage> {
  bool downloading = false;
  var progress = "";
  PermissionGroup permission1 = PermissionGroup.storage;
  static final Random random = Random();

  void downloadFile(String imgUrl) async {
    bool checkPermission1;
    final List<PermissionGroup> permissions = <PermissionGroup>[permission1];
    await PermissionHandler()
        .checkPermissionStatus(permission1)
        .then((PermissionStatus status) {
      setState(() {
        if (status == PermissionStatus.denied) {
          checkPermission1 = false;
        } else {
          if (status == PermissionStatus.granted) {
            checkPermission1 = true;
          }
        }
      });
    });
    // print(checkPermission1);
    if (checkPermission1 == false) {
      await PermissionHandler().requestPermissions(permissions);
      await PermissionHandler()
          .checkPermissionStatus(permission1)
          .then((PermissionStatus status) {
        setState(() {
          if (status == PermissionStatus.denied) {
            checkPermission1 = false;
          } else {
            if (status == PermissionStatus.granted) {
              checkPermission1 = true;
            }
          }
        });
      });
    }
    if (checkPermission1 == true) {
      // var dir = await getExternalStorageDirectory();
      var dirloc = "/storage/emulated/0/Food/";
      var randid = random.nextInt(10000);

      try {
        FileUtils.mkdir([dirloc]);
        // await dio.download(imgUrl, dirloc + randid.toString() + ".jpg",

        //     onReceiveProgress: (receivedBytes, totalBytes) {
        //   setState(() {
        //     // print(dirloc.toString());
        //     downloading = true;
        //     progress =
        //         ((receivedBytes / totalBytes) * 100).toStringAsFixed(0) + "%";
        //   });
        // });
      } catch (e) {
        print(e);
      }

      setState(() {
        progress = "Download Completed.";
        // Fluttertoast.showToast(
        //     msg: 'Image Saved to Gallery.',
        //     toastLength: Toast.LENGTH_LONG,
        //     gravity: ToastGravity.CENTER,
        //     timeInSecForIos: 5,
        //     backgroundColor: Colors.white70,
        //     textColor: Color.fromRGBO(9, 9, 26, 1.0),
        //     fontSize: 18.0);
        downloading = false;
      });
    } else {
      setState(() {
        progress = "Permission Denied!";
      });
    }
  }

  setwallpaper(String imgUrl) async {
    Stream<String> progressString = Wallpaper.imageDownloadProgress(imgUrl);
    progressString.listen((data) {
      setState(() {
        downloading = true;
      });
    }, onDone: () async {
      await Wallpaper.bothScreen();
      setState(() {
        downloading = false;
        Fluttertoast.showToast(
          msg: 'Wallpaper Set Successfully.',
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.CENTER,
          // timeInSecForIos: 5,
          backgroundColor: Colors.white70,
          textColor: Color.fromRGBO(9, 9, 26, 1.0),
          fontSize: 18.0,
        );
      });
      await Wallpaper.bothScreen();
    });
    // await Wallpaper.homeScreen();
    // if (!mounted) return;
  }

  shareImg(String imgUrl) async {
    try {
      var request = await HttpClient().getUrl(Uri.parse(imgUrl));
      var response = await request.close();
      Uint8List bytes = await consolidateHttpClientResponseBytes(response);
      await Share.file('Food Wallpaper', 'food.jpg', bytes, 'image/jpg',
          text: 'Food Wallfy.');
    } catch (error) {
      print('Error Sharing Image: $error');
    }
  }

  final LinearGradient backgroundGradient = LinearGradient(
      colors: [Color(0x10000000), Color(0x30000000)],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight);

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
    final FullImageArguments args = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ClipRRect(
          child: CachedNetworkImage(
            placeholderFadeInDuration: Duration(milliseconds: 40),
            placeholder: (c, url) => Stack(
              children: <Widget>[
                CachedNetworkImage(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  imageUrl: args.lastImgPath,
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                  fadeInCurve: Curves.bounceIn,
                  fadeInDuration: Duration(milliseconds: 1000),
                ),
                BackdropFilter(
                  filter: new ui.ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                  child: Container(
                    color: Colors.black.withOpacity(0.3),
                  ),
                ),
                Center(
                  child: SpinKitCircle(
                    size: 100.0,
                    itemBuilder: (context, index) => DecoratedBox(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          colors: FzColors().getListColors(
                            ["#FDFBFB", "#EBEDEE"],
                          ),
                          tileMode: TileMode.clamp,
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          stops: FzColors().getLoaderStops(),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            imageUrl: args.imgPath,
            imageBuilder: (context, image) => downloading
                ? Stack(
                    children: <Widget>[
                      CachedNetworkImage(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        imageUrl: args.lastImgPath,
                        fit: BoxFit.cover,
                        alignment: Alignment.center,
                        fadeInCurve: Curves.bounceIn,
                        fadeInDuration: Duration(milliseconds: 1000),
                      ),
                      BackdropFilter(
                        filter:
                            new ui.ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                        child: Container(
                          color: Colors.black.withOpacity(0.3),
                        ),
                      ),
                      Center(
                        child: SpinKitCircle(
                          size: 100.0,
                          itemBuilder: (context, index) => DecoratedBox(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                colors: FzColors().getListColors(
                                  ["#F093FB", "#F5576C"],
                                ),
                                tileMode: TileMode.clamp,
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                stops: FzColors().getLoaderStops(),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          '$progress',
                          style: TextStyle(
                            fontSize: 22.0,
                            letterSpacing: 2.0,
                            fontWeight: FontWeight.w800,
                            foreground: Paint()
                              ..shader = LinearGradient(
                                colors: FzColors().getListColors(
                                  ["#F093FB", "#F5576C"],
                                ),
                              ).createShader(
                                Rect.fromLTRB(
                                  200.0,
                                  0.0,
                                  100.0,
                                  0.0,
                                ),
                              ),
                          ),
                        ),
                      ),
                    ],
                  )
                : Stack(
                    children: <Widget>[
                      Image(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        image: image,
                        fit: BoxFit.cover,
                      ),
                      Positioned(
                        bottom: MediaQuery.of(context).size.height * .07,
                        left: MediaQuery.of(context).size.width * .08,
                        right: MediaQuery.of(context).size.width * .27,
                        child: MaterialButton(
                          splashColor: Colors.grey[100],
                          color: Colors.white.withOpacity(.47),
                          textColor: Colors.white,
                          elevation: 5.0,
                          height: 40.0,
                          // focusColor: Colors.orange,
                          // minWidth: 50.0,
                          child: Text("Download"),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40.0),
                          ),
                          onPressed: () => downloadFile(args.imgPath),
                        ),
                      ),
                      Positioned(
                        bottom: MediaQuery.of(context).size.height * .07,
                        // right: MediaQuery.of(context).size.width * .2,
                        left: MediaQuery.of(context).size.width * .72,
                        child: IconButton(
                          icon: Icon(Icons.share),
                          onPressed: () => shareImg(args.lastImgPath),
                          color: Colors.white,
                        ),
                      ),
                      Positioned(
                        bottom: MediaQuery.of(context).size.height * .07,
                        // right: MediaQuery.of(context).size.width * .2,
                        left: MediaQuery.of(context).size.width * .84,
                        child: IconButton(
                          icon: Icon(Icons.wallpaper),
                          onPressed: () => setwallpaper(args.lastImgPath),
                          color: Colors.white,
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            AppBar(
                              elevation: 0.0,
                              backgroundColor: Colors.black12,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
            fit: BoxFit.cover,
            alignment: Alignment.center,
            fadeInCurve: Curves.bounceIn,
            fadeInDuration: Duration(milliseconds: 1000),
          ),
        ),
      ),
    );
  }
}
