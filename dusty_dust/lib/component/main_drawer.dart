import 'package:dusty_dust/const/colors.dart';
import 'package:flutter/material.dart';

const regions = [
  '서울',
  '경기',
  '대전',
  '부산',
  '제주',
  '경북',
  '세종',
  '강원',
  '전북',
  '울산',
  '경남'
];

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: darkColor,
      child: ListView(
        children: [
          DrawerHeader(
            child: Text(
              '지역선택',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
          ),
          ...regions
              .map(
                (e) => ListTile(
                  tileColor: Colors.white,
                  selected: e == '제주',
                  selectedColor: Colors.black,
                  selectedTileColor: lightColor,
                  onTap: () {},
                  title: Text(e),
                ),
              )
              .toList(),
        ],
      ),
    );
  }
}
