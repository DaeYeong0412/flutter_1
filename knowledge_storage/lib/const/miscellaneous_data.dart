import 'package:flutter/material.dart';
import 'dart:convert';

String jsonString = '''
    [
        {
            "title": "러시아 에도 김치가 있다?",
            "content": "러시아와 중앙아시아에도 김치가 있는 것 알고 계셨나요? 구 소련에 김치가 퍼지게 된 이유와 고려인들의 강제이주 역사에 대해 알아보겠습니다.",
            "link": "https://www.youtube.com/watch?v=T9AGEJ_FDXs",
            "source": "지식해적단"
        },
        {
            "title": "로켓 타고 우주로간 동물들", 
            "content": "우주에 인간의 발이 직접 닿기 전, 인간 대신 먼저 우주에 보내진 많은 동물들이 있다는 걸 알고 계신가요? 그들의 이야기를 들려드립니다.", 
            "link": "https://www.youtube.com/watch?v=sAyCxLxpL48", 
            "source": "지식해적단"
        },
        {
            "title": "수에즈 운하의 역사", 
            "content": "예로부터 유럽과 인도를 오고가려면 아프리카 대륙을 통째로 돌아서 가야 하는 불편함이 있었습니다. 그러나 현대에는 그렇지 않죠! 이집트 시나이 반도에 뚫어버린 192km 길이의 거대 운하, 수에즈 운하를 아시나요?", 
            "link": "https://www.youtube.com/watch?v=Gz0bvWHv5H8", 
            "source": "지식해적단"
        },
    ]
    ''';

List jsonList = jsonDecode(jsonString);