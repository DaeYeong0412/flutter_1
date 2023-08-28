import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';
import 'package:timer_builder/timer_builder.dart';
import 'package:video_box/screen/knowledge_warehouse.dart';
import 'package:video_box/component/route_animation.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Image.asset('asset/img/header_left.png'),
        leadingWidth: 70,
        title: Image.asset('asset/img/header_logo.png'),
        centerTitle: true,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black, size: 35.0),
      ),
      endDrawer: Drawer(
        width: 210,
        child: Column(
          children: [
            SizedBox(
              height: 120,
              child: DrawerHeader(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Image.asset('asset/img/menu.png'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 7.0),
                      child: InkWell(
                        child: Image.asset('asset/img/close.png'),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              tileColor: Color(0xFF2A2A2A),
              textColor: Colors.white,
              title: Text(
                '지식 창고로 이동하기',
                textAlign: TextAlign.center,
              ),
              onTap: () {
                Navigator.push(
                    context,
                    SlideRightRoute(
                      page: KnowledgeWarehouse(),
                    ));
              },
            ),
            ListTile(
              textColor: Colors.black,
              title: Text(
                '자매품 보러 가기',
                textAlign: TextAlign.center,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              tileColor: Color(0xFF2A2A2A),
              textColor: Colors.white,
              title: Text(
                '개발자에게 도움주기',
                textAlign: TextAlign.center,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Padding(
              padding: EdgeInsets.only(top: 90),
            ),
            Expanded(
              child: Image.asset('asset/img/menu_detail.png'),
            )
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              children: [
                Text(
                  '오늘의 지식',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TimerBuilder.periodic(
                  const Duration(seconds: 1),
                  builder: (context) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          child: Text(
                            formatDate(DateTime.now(), [hh, ':', nn]),
                            style: const TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Text(
                          formatDate(DateTime.now(),
                              [yyyy, '. ', mm, '. ', dd, '  ', am]),
                          style: const TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: CustomScrollView(
              scrollBehavior: NoBehavior(),
              slivers: [
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      return SizedBox(
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 40, vertical: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '통조림, 과연!',
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text(
                                  '방부재가 있을까요?',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                IconButton(
                                  iconSize: 28,
                                  padding: EdgeInsets.only(
                                    top: 20,
                                  ),
                                  onPressed: () {
                                    setState(
                                      () {
                                        isSelected = !isSelected;
                                      },
                                    );
                                  },
                                  icon: Container(
                                    child: Icon(
                                      isSelected == true
                                          ? Icons.favorite
                                          : Icons.favorite_outline,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 20,
                                  ),
                                  child: InkWell(
                                    child: Image.asset('asset/img/asdf.png'),
                                    onTap: () {
                                      launch("https://www.youtube.com/watch?v=T9AGEJ_FDXs");
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    bottom: 30,
                                    top: 5,
                                  ),
                                  child: Text(
                                    '출처 : 유튜브 지식해적단',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                                Text(
                                  '우리의 일상에 자주볼 수 있는 통조림! 이안에 방부재가 없다고~?! 과연 그럼 어떻게 음식을 이렇게 오래 보관할 수 있을까요~? 지금 관련 영상을 보고 지식을 습득 하고 보관해봐요!',
                                  style: TextStyle(fontSize: 13),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                    childCount: 20,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class NoBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
