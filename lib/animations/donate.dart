import 'package:flutter/material.dart';

class DonateItem extends AnimatedWidget {
  final image;
  final title;
  final gradient;
  final color;
  final paymentMode;

  DonateItem({
    Key key,
    this.paymentMode,
    Animation<double> animation,
    this.image,
    this.title,
    this.gradient,
    this.color,
  }) : super(
          key: key,
          listenable: animation,
        );
  @override
  Widget build(BuildContext context) {
    final Animation<double> animation = listenable;
    return InkWell(
      onTap: () {},
      child: Container(
        height: 100.0,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: <Widget>[
            Container(
              height: 90.0,
              width: MediaQuery.of(context).size.width - 20,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  12.0,
                ),
                gradient: gradient,
                shape: BoxShape.rectangle,
                boxShadow: [
                  BoxShadow(
                    color: color,
                    blurRadius: 5.0,
                    spreadRadius: 0.4,
                    offset: Offset(
                      0.7,
                      3.0,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 35.0,
              left: 15.0,
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'google',
                  fontSize: 17.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Positioned(
              bottom: 0.0,
              right: animation.value,
              top: 0.0,
              child: Hero(
                tag: title,
                child: Image.asset(
                  "assets/images/$image.png",
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
