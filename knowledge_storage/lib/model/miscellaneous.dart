import 'package:drift/drift.dart';

class Miscellaneous extends Table {
  // PRIMARY KEY
  IntColumn get id => integer().autoIncrement()();

  // 제목
  TextColumn get title => text()();

  // 내용
  TextColumn get content => text()();

  // 링크
  TextColumn get link => text()();

  // 출처
  TextColumn get source => text()();

  // 지식저장
  BoolColumn get like => boolean().withDefault(const Constant(false))();

  // 생성날짜
  DateTimeColumn get createdAt => dateTime().clientDefault(
        () => DateTime.now(),
  )();
}
