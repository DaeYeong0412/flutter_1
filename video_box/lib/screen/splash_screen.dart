import 'dart:async';
import 'package:video_box/component/route_animation.dart';
import 'package:flutter/material.dart';
import 'package:video_box/screen/title_splash_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 2),
      () => Navigator.pushReplacement(
        context,
        FadeRoute(page: TitleSplashScreen()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 180.0),
              child: Image.asset(
                'asset/img/splash_logo.png',
                width: 200,
                height: 200,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 120.0,
              ),
              child: RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'GmarketSans',
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                        text: 'ⓒ YPS ',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                        )),
                    TextSpan(
                      text: 'commpany',
                    ),
                  ],
                ),
              ),
            ),
            Text(
              'find happiness in fun',
              style: TextStyle(
                fontWeight: FontWeight.w300,
                color: Color(0xFFA4A3A3),
              ),
            )
          ],
        ),
      ),
    );
  }
}
