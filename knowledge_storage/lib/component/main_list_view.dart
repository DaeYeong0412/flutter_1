import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MainListView extends StatefulWidget {
  const MainListView({Key? key}) : super(key: key);

  @override
  State<MainListView> createState() => _MainListViewState();
}

class _MainListViewState extends State<MainListView> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(vertical: 5),
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            height: 390,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Stack(
                children: [
                  Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: InkWell(
                          child: Image.asset('asset/image/asdf.jpg'),
                          onTap: () {
                            launch(
                                "https://www.youtube.com/watch?v=T9AGEJ_FDXs");
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, bottom: 15.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                '💀 BBC 선정 위대한 영국인🇬🇧 9위… 바다 위의 인간흉기 ‘넬슨 제독’! / 💀 영국의 이순신 ㅇㅈ합니다',
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w700),
                              ),
                              flex: 3,
                            ),
                            Expanded(
                              child: Container(),
                            )
                          ],
                        ),
                      ),
                      Text(
                        '흔히 해전 역사상 가장 위대한 명장을 꼽으라고 하면 무조건 포함되는 인물이 있습니다. 그리고 그 중 최고는 뭐니뭐니해도 ‘호레이쇼 넬슨’ 제독! 세계의 해양 패권을 쥐락펴락했던 영국이니만큼, 넬슨 제독'
                        '의 활약상과 후세에 미친 영향은 압도적이죠. 한국에 이순'
                        '신이 있다면 영국에는 넬슨이 있다… 나폴레옹 전쟁기, 조국 영국을 구원한 넬슨 제독의 활약상을dddddddddd 알아봅니다dddddddddddddddd.',
                        maxLines: 5,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w300),
                      )
                    ],
                  ),
                  Positioned(
                    bottom: 125,
                    right: 20,
                    child: Stack(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50)),
                        ),
                        Positioned(
                          top: 18,
                          left: 15,
                          child: InkWell(
                            child: Image.asset(
                              'asset/image/like.png',
                              width: 30,
                            ),
                            onTap: () {},
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 360,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.amber[600],
            ),
            child: const Center(child: Text('Entry A')),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 360,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.amber[600],
            ),
            child: const Center(child: Text('Entry A')),
          ),
        ),
      ],
    );
  }
}
