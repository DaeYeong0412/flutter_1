import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:box/database/tables.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

part 'database.g.dart';

@DriftDatabase(
  tables: [Boxs],
)

class database extends _$database {
  database() : super(_openConnection());

  Future<int> createDatabase(BoxsCompanion data) =>
      into(boxs).insert(data);

  Future<List<DataBoxs>> createDatabases() =>
      select(boxs).get();

  // 스키마 버전 - 데이터 베이스의 설정을 한 테이블들의 상태 버전 스키마 버전은 항상 1부터
  @override
  int get schemaVersion => 1;
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {

    // path_provider 를 통해 앱의 저장위치 얻음
    final dbFolder = await getApplicationDocumentsDirectory();

    // 해당 경로에 파일 생성
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase(file);
  });
}
