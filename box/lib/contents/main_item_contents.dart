import 'package:flutter/material.dart';

class MainItemContents extends StatelessWidget {
  const MainItemContents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: ListView(
          padding: EdgeInsets.all(9),
          children: [
            Card(
              shape: RoundedRectangleBorder(
                //모서리를 둥글게 하기 위해 사용
                borderRadius: BorderRadius.circular(16.0),
              ),
              elevation: 4.0, //그림자 깊이
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.45,
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.009,
                    ),
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.9,
                          child: Image.asset('assets/images/card01.jpg'),
                        ),
                        Positioned(
                          bottom: -25,
                          right: 23,
                          child: Container(
                            height: 60,
                            width: 60,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: TextButton(
                              onPressed: () => print('하트 눌럿음'),
                              child: Image(
                                image: AssetImage('assets/images/likeLogo.png'),
                                width: 30,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(20, 10, 89, 10),
                      child: Text(
                        '💀 BBC 선정 위대한 영국인🇬🇧 9위… 바다 위의 인간흉기 ‘넬슨 제독’! / 💀 영국의 이순신 ㅇㅈ합니다',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: Text(
                        '흔히 해전 역사상 가장 위대한 명장을 꼽으라고 하면 무조건 포함되는 인물이 있습니다. 그리고 그 중 최고는 뭐니뭐니해도 ‘호레이쇼 넬슨’ 제독! 세계의 해양 패권을 쥐락펴락했던 영국이니만큼, 넬슨 제독의 활약상과 후세에 미친 영향은 압도적이죠. 한국에 이순신이 있다면 영국에는 넬슨이 있다… 나폴레옹 전쟁기, 조국 영국을 구원한 넬슨 제독의 활약상을 알아봅니다.',
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
