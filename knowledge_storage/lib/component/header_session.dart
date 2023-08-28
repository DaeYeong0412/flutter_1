import 'package:flutter/material.dart';
import 'package:knowledge_storage/component/list_view_horizontal.dart';
import 'package:knowledge_storage/component/time_app.dart';

class HeaderSession extends StatelessWidget {
  const HeaderSession({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 95),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                  child: Container(
                    padding: EdgeInsets.only(top: 30),
                    height: 145,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 37.0),
                          child: Column(
                            children: [
                              Text(
                                '당신이 궁금한 잡학다식 이야기',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12,
                                    color: Colors.white),
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.symmetric(vertical: 10.0),
                                child: Text(
                                  '유튜브 속 궁금했던 이야기에 하트를 눌러 지식의 창고에 보관하고 언제든지 꺼내봐요!',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 8,
                                      color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 30,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: 100,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0)),
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    '조선사 모음',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 100,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0)),
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    '주짓수',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  flex: 5),
              Expanded(child: TimeApp(), flex: 3),
            ],
          ),
          ListViewHorizontal(),
        ],
      ),
    );
  }
}
