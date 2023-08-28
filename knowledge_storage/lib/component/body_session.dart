import 'package:flutter/material.dart';
import 'package:knowledge_storage/component/main_list_view.dart';

class BodySession extends StatelessWidget {
  const BodySession({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(top: 0),
        padding: EdgeInsets.only(top: 0),
        color: Color(0xFFF5F1F0),
        child: MainListView(),
      ),
    );
  }
}