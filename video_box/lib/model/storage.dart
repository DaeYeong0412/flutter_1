import 'package:drift/drift.dart';

class Storage extends Table {
  // PK
  IntColumn get id => integer().autoIncrement()();

  // 제목
  TextColumn get title => text()();

  // 링크
  TextColumn get url => text()();

  // 출처
  TextColumn get source => text()();

  // 설명
  TextColumn get context => text()();

  // 지식저장
  BoolColumn get like => boolean()();

  // 저장일시
  DateTimeColumn get updateTime => dateTime().clientDefault(
        () => DateTime.now(),
      )();
}
