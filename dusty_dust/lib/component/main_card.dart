import 'package:dusty_dust/const/colors.dart';
import 'package:flutter/material.dart';

import '';

class MainCard extends StatelessWidget {
  final Widget child;

  const MainCard({
    required this.child,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(16.0),
        ),
      ),
      color: lightColor,
      child: child,
    );
  }
}
