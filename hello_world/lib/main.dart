import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    ),
  );
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'asset/img/main.png',
          ),
          Image.asset(
            'asset/img/sub_01.png',
          ),
          Image.asset(
            'asset/img/sub_02.png',
          ),
          CircularProgressIndicator(
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
