import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../contents/end_drawer.dart';
import '../contents/main_contents.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF5F1F0),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          foregroundColor: Colors.black,
          leading: IconButton(
            icon: Image(
              image: AssetImage('assets/images/appbarLeading.png'),
            ),
            onPressed: null,
          ),
        ),
        extendBodyBehindAppBar: true,
        endDrawer: EndDrawer(),
        // 혹시 키보드가 올라올때 올라가는 것을 방지
        resizeToAvoidBottomInset: false,
        body: MainContents(),
      ),
    );
  }
}
