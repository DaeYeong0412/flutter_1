import 'package:flutter/material.dart';

class HeaderItemTwo extends StatelessWidget {
  const HeaderItemTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff7C96ED),
                foregroundColor: Colors.white,
                minimumSize: Size.square(5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onPressed: () => print('이동'),
              child: Text(
                '💀 BBC 선정 위대한 영국인🇬🇧 9위… ',
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 7,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
