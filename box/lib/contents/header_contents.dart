import 'package:flutter/material.dart';

import 'headerItem/header_item_one.dart';
import 'headerItem/header_item_two.dart';

class HeaderContents extends StatelessWidget {
  const HeaderContents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.26,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/mainHeder.png'), // 배경 이미지
        ),
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        body: Container(
          child: Column(
            children: [
              HeaderItemOne(),
              HeaderItemTwo(),
            ],
          ),
        ),
      ),
    );
  }
}

