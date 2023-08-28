// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $BoxsTable extends Boxs with TableInfo<$BoxsTable, Box> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $BoxsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _subtitleMeta =
      const VerificationMeta('subtitle');
  @override
  late final GeneratedColumn<String> subtitle = GeneratedColumn<String>(
      'subtitle', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _copyrightMeta =
      const VerificationMeta('copyright');
  @override
  late final GeneratedColumn<String> copyright = GeneratedColumn<String>(
      'copyright', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _selectMeta = const VerificationMeta('select');
  @override
  late final GeneratedColumn<bool> select =
      GeneratedColumn<bool>('select', aliasedName, false,
          type: DriftSqlType.bool,
          requiredDuringInsert: true,
          defaultConstraints: GeneratedColumn.constraintsDependsOnDialect({
            SqlDialect.sqlite: 'CHECK ("select" IN (0, 1))',
            SqlDialect.mysql: '',
            SqlDialect.postgres: '',
          }));
  @override
  List<GeneratedColumn> get $columns =>
      [id, title, subtitle, copyright, select];
  @override
  String get aliasedName => _alias ?? 'boxs';
  @override
  String get actualTableName => 'boxs';
  @override
  VerificationContext validateIntegrity(Insertable<Box> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('subtitle')) {
      context.handle(_subtitleMeta,
          subtitle.isAcceptableOrUnknown(data['subtitle']!, _subtitleMeta));
    } else if (isInserting) {
      context.missing(_subtitleMeta);
    }
    if (data.containsKey('copyright')) {
      context.handle(_copyrightMeta,
          copyright.isAcceptableOrUnknown(data['copyright']!, _copyrightMeta));
    } else if (isInserting) {
      context.missing(_copyrightMeta);
    }
    if (data.containsKey('select')) {
      context.handle(_selectMeta,
          select.isAcceptableOrUnknown(data['select']!, _selectMeta));
    } else if (isInserting) {
      context.missing(_selectMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Box map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Box(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      subtitle: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}subtitle'])!,
      copyright: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}copyright'])!,
      select: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}select'])!,
    );
  }

  @override
  $BoxsTable createAlias(String alias) {
    return $BoxsTable(attachedDatabase, alias);
  }
}

class Box extends DataClass implements Insertable<Box> {
  final int id;
  final String title;
  final String subtitle;
  final String copyright;
  final bool select;
  const Box(
      {required this.id,
      required this.title,
      required this.subtitle,
      required this.copyright,
      required this.select});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['title'] = Variable<String>(title);
    map['subtitle'] = Variable<String>(subtitle);
    map['copyright'] = Variable<String>(copyright);
    map['select'] = Variable<bool>(select);
    return map;
  }

  BoxsCompanion toCompanion(bool nullToAbsent) {
    return BoxsCompanion(
      id: Value(id),
      title: Value(title),
      subtitle: Value(subtitle),
      copyright: Value(copyright),
      select: Value(select),
    );
  }

  factory Box.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Box(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      subtitle: serializer.fromJson<String>(json['subtitle']),
      copyright: serializer.fromJson<String>(json['copyright']),
      select: serializer.fromJson<bool>(json['select']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
      'subtitle': serializer.toJson<String>(subtitle),
      'copyright': serializer.toJson<String>(copyright),
      'select': serializer.toJson<bool>(select),
    };
  }

  Box copyWith(
          {int? id,
          String? title,
          String? subtitle,
          String? copyright,
          bool? select}) =>
      Box(
        id: id ?? this.id,
        title: title ?? this.title,
        subtitle: subtitle ?? this.subtitle,
        copyright: copyright ?? this.copyright,
        select: select ?? this.select,
      );
  @override
  String toString() {
    return (StringBuffer('Box(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('subtitle: $subtitle, ')
          ..write('copyright: $copyright, ')
          ..write('select: $select')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, title, subtitle, copyright, select);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Box &&
          other.id == this.id &&
          other.title == this.title &&
          other.subtitle == this.subtitle &&
          other.copyright == this.copyright &&
          other.select == this.select);
}

class BoxsCompanion extends UpdateCompanion<Box> {
  final Value<int> id;
  final Value<String> title;
  final Value<String> subtitle;
  final Value<String> copyright;
  final Value<bool> select;
  const BoxsCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.subtitle = const Value.absent(),
    this.copyright = const Value.absent(),
    this.select = const Value.absent(),
  });
  BoxsCompanion.insert({
    this.id = const Value.absent(),
    required String title,
    required String subtitle,
    required String copyright,
    required bool select,
  })  : title = Value(title),
        subtitle = Value(subtitle),
        copyright = Value(copyright),
        select = Value(select);
  static Insertable<Box> custom({
    Expression<int>? id,
    Expression<String>? title,
    Expression<String>? subtitle,
    Expression<String>? copyright,
    Expression<bool>? select,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (subtitle != null) 'subtitle': subtitle,
      if (copyright != null) 'copyright': copyright,
      if (select != null) 'select': select,
    });
  }

  BoxsCompanion copyWith(
      {Value<int>? id,
      Value<String>? title,
      Value<String>? subtitle,
      Value<String>? copyright,
      Value<bool>? select}) {
    return BoxsCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      subtitle: subtitle ?? this.subtitle,
      copyright: copyright ?? this.copyright,
      select: select ?? this.select,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (subtitle.present) {
      map['subtitle'] = Variable<String>(subtitle.value);
    }
    if (copyright.present) {
      map['copyright'] = Variable<String>(copyright.value);
    }
    if (select.present) {
      map['select'] = Variable<bool>(select.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BoxsCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('subtitle: $subtitle, ')
          ..write('copyright: $copyright, ')
          ..write('select: $select')
          ..write(')'))
        .toString();
  }
}

abstract class _$database extends GeneratedDatabase {
  _$database(QueryExecutor e) : super(e);
  late final $BoxsTable boxs = $BoxsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [boxs];
}
