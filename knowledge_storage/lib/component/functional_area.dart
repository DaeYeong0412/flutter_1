import 'package:flutter/material.dart';
import 'package:knowledge_storage/component/body_session.dart';
import 'package:knowledge_storage/component/header_session.dart';

class FunctionalArea extends StatelessWidget {
  FunctionalArea({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 280,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("asset/image/header_background.png"),
              fit: BoxFit.fill,
            ),
          ),
          child: HeaderSession(),
        ),
        BodySession(),
      ],
    );
  }
}
