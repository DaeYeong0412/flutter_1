import 'package:flutter/material.dart';
import 'package:knowledge_storage/component/app_bar_app.dart';
import 'package:knowledge_storage/component/drawer_app.dart';
import 'package:knowledge_storage/component/functional_area.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarApp(),extendBodyBehindAppBar: true,
      endDrawer: DrawerApp(),
      body: FunctionalArea(),
    );
  }
}

