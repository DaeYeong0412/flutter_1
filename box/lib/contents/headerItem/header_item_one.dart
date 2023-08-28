import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HeaderItemOne extends StatelessWidget {
  const HeaderItemOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.5,
            padding: EdgeInsets.fromLTRB(30, 72, 0, 0),
            child: Column(
              children: [
                Text(
                  '당신이 궁금한 잡학다식 이야기',
                  style: TextStyle(
                    fontFamily: 'GmarketSans',
                    fontWeight: FontWeight.w600,
                    fontSize: MediaQuery.of(context).devicePixelRatio * 5.5,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 8.0),
                Text(
                  '유튜브 속 궁금했던 이야기에 하트를 눌러 지식의 창고에 보관하고 언제든지 꺼내봐요!',
                  style: TextStyle(
                    fontFamily: 'GmarketSans',
                    fontWeight: FontWeight.w400,
                    fontSize: MediaQuery.of(context).devicePixelRatio * 3.5,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 8.0),
                Container(
                  child: Row(
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        onPressed: () => print('조선사 모음 이동'),
                        child: Text(
                          '조선사 모음',
                          style: TextStyle(fontWeight: FontWeight.w800),
                        ),
                      ),
                      const SizedBox(width: 15.0),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        onPressed: () => print('주짓수 이동'),
                        child: Text(
                          '주짓수',
                          style: TextStyle(fontWeight: FontWeight.w800),
                        ),
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(75, 50, 0, 20),
            child: Column(
              children: [
                Text(
                  '지식의 창고',
                  style: TextStyle(
                    fontFamily: 'GmarketSans',
                    fontWeight: FontWeight.w800,
                    fontSize: MediaQuery.of(context).devicePixelRatio * 9,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 9.0),
                Text(
                  DateFormat('KK:mm').format(DateTime.now()),
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).devicePixelRatio * 17,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 5.0),
                Text(
                  DateFormat('yyyy.  MM.  dd        a').format(DateTime.now()),
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).devicePixelRatio * 4.5,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
