import 'package:flutter/material.dart';

class AppBarApp extends StatelessWidget implements PreferredSizeWidget {
  const AppBarApp({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(50),
      child: AppBar(
        backgroundColor: Colors.transparent,
        title: Image.asset(
          'asset/image/appbar_logo.png',
          fit: BoxFit.cover,
          height: 25,
        ),
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
    );
  }
}