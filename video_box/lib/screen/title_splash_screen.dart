import 'dart:async';
import 'package:video_box/component/route_animation.dart';
import 'package:flutter/material.dart';
import 'package:video_box/screen/home_screen.dart';

class TitleSplashScreen extends StatefulWidget {
  @override
  _TitleSplashScreenState createState() => _TitleSplashScreenState();
}

class _TitleSplashScreenState extends State<TitleSplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 2),
      () => Navigator.pushReplacement(
        context,
        FadeRoute(page: HomeScreen()),
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
              padding: const EdgeInsets.only(top: 230.0),
              child: Text(
                'Knowledge',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 40,
                ),
              ),
            ),
            Text(
              '당신이 몰랐던 역사',
              style: TextStyle(
                fontSize: 35,
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
