import 'package:flutter/material.dart';

class KnowledgeWarehouse extends StatelessWidget {
  const KnowledgeWarehouse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Align(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Text(
              '지식창고',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 15, bottom: 10),
            child: Container(
              child: RichText(
                text: TextSpan(
                  text: '저',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'GmarketSans',
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                        text: '장 된 지식들!',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                        )),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 50,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  color: index % 2 == 0 ? Color(0xffEDEDED) : Color(0xffFAFAFA),
                  child: ListTile(
                    leading: Text(
                      "잘되는지 확인중 $index",
                      style: TextStyle(
                        height: 1.5,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    trailing: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        side: BorderSide(width: 1.0),
                        primary: Colors.grey,
                      ),
                      onPressed: () {},
                      child: Text(
                        "해제",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    onTap: () {},
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}