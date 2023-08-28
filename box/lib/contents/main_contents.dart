import 'package:box/contents/header_contents.dart';
import 'package:flutter/material.dart';

import 'main_item_contents.dart';

class MainContents extends StatelessWidget {
  const MainContents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0xffF5F1F0).withOpacity(0.7),
            blurRadius: 20.0,
            spreadRadius: -20.0,
            offset: Offset(0.0, 25.0),
          ),
        ],
      ),
      child: Column(
        children: [
          HeaderContents(),
          MainItemContents(),
        ],
      ),
    );
  }
}
