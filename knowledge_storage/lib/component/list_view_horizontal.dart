import 'package:flutter/material.dart';

class ListViewHorizontal extends StatefulWidget {
  const ListViewHorizontal({Key? key}) : super(key: key);

  @override
  State<ListViewHorizontal> createState() => _ListViewHorizontalState();
}

class _ListViewHorizontalState extends State<ListViewHorizontal> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 15),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF7C96ED),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
              ),
              onPressed: () {},
              child: Text(
                '테스트이다요',
                style: TextStyle(
                  fontSize: 8,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 15),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF7C96ED),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
              ),
              onPressed: () {},
              child: Text(
                '테스트이다요',
                style: TextStyle(
                  fontSize: 8,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 15),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF7C96ED),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
              ),
              onPressed: () {},
              child: Text(
                '테스트이다요',
                style: TextStyle(
                  fontSize: 8,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 15),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF7C96ED),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
              ),
              onPressed: () {},
              child: Text(
                '테스트이다요',
                style: TextStyle(
                  fontSize: 8,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 15),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF7C96ED),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
              ),
              onPressed: () {},
              child: Text(
                '테스트이다요',
                style: TextStyle(
                  fontSize: 8,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 15, right: 15),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF7C96ED),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
              ),
              onPressed: () {},
              child: Text(
                '테스트이다요',
                style: TextStyle(
                  fontSize: 8,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
