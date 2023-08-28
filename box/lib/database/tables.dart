// 모델 클래스를 만들고 table을 상속한다.
// 타입 column get 변수명 => 타입()() 형태로 만들어야한다.

import 'package:drift/drift.dart';

class Boxs extends Table {
  // integer 정수, autoIncrement 자동 증가란 뜻
  IntColumn get id => integer().autoIncrement()();
  // SQL에 대한 개념을 잡아야한다. PK, AK
  TextColumn get title => text()();
  TextColumn get subtitle => text()();
  TextColumn get copyright => text()();
  BoolColumn get select => boolean()();
}