import 'package:flutter/material.dart';

class EndDrawer extends StatelessWidget {
  const EndDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.6,
      child: Drawer(
        child: ListView(
          children: <Widget>[
            SizedBox(
              child: Container(
                height: 78,
                child: Text(
                  '',
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'establish',
                    color: Colors.white,
                  ),
                ),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.7),
                      spreadRadius: 0,
                      blurRadius: 5.0,
                      offset: Offset(0, 8), // changes position of shadow
                    ),
                  ],
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color(0xff6D6FE9),
                      Color(0xff80AAEB),
                    ],
                  ),
                  image: DecorationImage(
                    image: AssetImage('assets/images/menu.png'),
                    alignment: Alignment(-0.8, 0),
                  ),

                ),
              ),
            ),
            const SizedBox(height: 18.0),
            Padding(
              padding: EdgeInsets.all(5),
              child: Container(
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.7),
                      spreadRadius: 0,
                      blurRadius: 5.0,
                      offset: Offset(0, 8), // changes position of shadow
                    ),
                  ],
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color(0xff6D6FE9),
                      Color(0xff80AAEB),
                    ],
                  ),
                ),
                child: ListTile(
                  leading: CircleAvatar(
                    child: Icon(
                      Icons.inbox,
                      size: 25,
                      color: Colors.black,
                    ),
                    backgroundColor: Colors.white,
                  ),
                  title: Text(
                    'Knowledge Storage',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'establish',
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                  onTap: () {
                    print('지식 창고로 이동하기');
                  },
                ),
              ),
            ),
            const SizedBox(height: 18.0),
            Padding(
              padding: EdgeInsets.all(5),
              child: Container(
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.7),
                      spreadRadius: 0,
                      blurRadius: 5.0,
                      offset: Offset(0, 8), // changes position of shadow
                    ),
                  ],
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color(0xff80AAEB),
                      Color(0xff6D6FE9),
                    ],
                  ),
                ),
                child: ListTile(
                  leading: CircleAvatar(
                    child: Icon(
                      Icons.people_alt,
                      size: 25,
                      color: Colors.black,
                    ),
                    backgroundColor: Colors.white,
                  ),
                  title: Text(
                    'Sub Branding',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'establish',
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                  onTap: () {
                    print('개발자에게 도움주기 이동 버튼 클릭');
                  },
                ),
              ),
            ),
            const SizedBox(height: 18.0),
            Padding(
              padding: EdgeInsets.all(5),
              child: Container(
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.7),
                      spreadRadius: 0,
                      blurRadius: 5.0,
                      offset: Offset(0, 8), // changes position of shadow
                    ),
                  ],
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color(0xff6D6FE9),
                      Color(0xff80AAEB),
                    ],
                  ),
                ),
                child: ListTile(
                  leading: CircleAvatar(
                    child: Icon(
                      Icons.paid,
                      size: 25,
                      color: Colors.black,
                    ),
                    backgroundColor: Colors.white,
                  ),
                  title: Text(
                    'Supporting',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'establish',
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                  onTap: () {
                    print('서포팅으로 연결');
                  },
                ),
              ),
            ),
            const SizedBox(height: 18.0),
            Padding(
              padding: EdgeInsets.all(5),
              child: Container(
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.7),
                      spreadRadius: 0,
                      blurRadius: 5.0,
                      offset: Offset(0, 8), // changes position of shadow
                    ),
                  ],
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color(0xff80AAEB),
                      Color(0xff6D6FE9),
                    ],
                  ),
                ),
                child: ListTile(
                  leading: CircleAvatar(
                    child: Icon(
                      Icons.copyright,
                      size: 25,
                      color: Colors.black,
                    ),
                    backgroundColor: Colors.white,
                  ),
                  title: Text(
                    'Copyright',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'establish',
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                  onTap: () {
                    print('저작권 페이지로 이동');
                  },
                ),
              ),
            ),
            Image(
              image: AssetImage('assets/images/menu_last.png'),
              alignment: Alignment.topCenter,
            ),
          ],
        ),
      ),
    );
  }
}
