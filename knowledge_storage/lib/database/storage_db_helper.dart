import 'dart:io';

import 'package:knowledge_storage/model/miscellaneous.dart';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

part 'storage_db_helper.g.dart';

@DriftDatabase(
  tables: [Miscellaneous],
)

class StorageDbHelper extends _$StorageDbHelper {
  StorageDbHelper() : super(_openConnection());

  Future<int> createMiscellaneous(MiscellaneousCompanion data) =>
      into(miscellaneous).insert(data);

  Future<List<Miscellaneou>> getMiscellaneousById() =>
      select(miscellaneous).get();

  Future<int> updateMiscellaneousById(int id, MiscellaneousCompanion data) =>
      (update(miscellaneous)..where((tbl) => tbl.id.equals(id))).write(data);

  @override
  int get schemaVersion => 1;
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase(file);
  });
}
