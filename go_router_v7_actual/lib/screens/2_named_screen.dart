import 'package:flutter/material.dart';
import 'package:go_router_v7_actual/layout/default_layout.dart';

class NamedScreen extends StatelessWidget {
  const NamedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(body: Center(
      child: Text('Named Screen'),
    ));
  }
}
