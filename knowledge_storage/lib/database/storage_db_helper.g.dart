// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'storage_db_helper.dart';

// ignore_for_file: type=lint
class $MiscellaneousTable extends Miscellaneous
    with TableInfo<$MiscellaneousTable, Miscellaneou> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MiscellaneousTable(this.attachedDatabase, [this._alias]);
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
  static const VerificationMeta _contentMeta =
      const VerificationMeta('content');
  @override
  late final GeneratedColumn<String> content = GeneratedColumn<String>(
      'content', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _linkMeta = const VerificationMeta('link');
  @override
  late final GeneratedColumn<String> link = GeneratedColumn<String>(
      'link', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _sourceMeta = const VerificationMeta('source');
  @override
  late final GeneratedColumn<String> source = GeneratedColumn<String>(
      'source', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _likeMeta = const VerificationMeta('like');
  @override
  late final GeneratedColumn<bool> like =
      GeneratedColumn<bool>('like', aliasedName, false,
          type: DriftSqlType.bool,
          requiredDuringInsert: false,
          defaultConstraints: GeneratedColumn.constraintsDependsOnDialect({
            SqlDialect.sqlite: 'CHECK ("like" IN (0, 1))',
            SqlDialect.mysql: '',
            SqlDialect.postgres: '',
          }),
          defaultValue: const Constant(false));
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      clientDefault: () => DateTime.now());
  @override
  List<GeneratedColumn> get $columns =>
      [id, title, content, link, source, like, createdAt];
  @override
  String get aliasedName => _alias ?? 'miscellaneous';
  @override
  String get actualTableName => 'miscellaneous';
  @override
  VerificationContext validateIntegrity(Insertable<Miscellaneou> instance,
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
    if (data.containsKey('content')) {
      context.handle(_contentMeta,
          content.isAcceptableOrUnknown(data['content']!, _contentMeta));
    } else if (isInserting) {
      context.missing(_contentMeta);
    }
    if (data.containsKey('link')) {
      context.handle(
          _linkMeta, link.isAcceptableOrUnknown(data['link']!, _linkMeta));
    } else if (isInserting) {
      context.missing(_linkMeta);
    }
    if (data.containsKey('source')) {
      context.handle(_sourceMeta,
          source.isAcceptableOrUnknown(data['source']!, _sourceMeta));
    } else if (isInserting) {
      context.missing(_sourceMeta);
    }
    if (data.containsKey('like')) {
      context.handle(
          _likeMeta, like.isAcceptableOrUnknown(data['like']!, _likeMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Miscellaneou map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Miscellaneou(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      content: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}content'])!,
      link: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}link'])!,
      source: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}source'])!,
      like: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}like'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
    );
  }

  @override
  $MiscellaneousTable createAlias(String alias) {
    return $MiscellaneousTable(attachedDatabase, alias);
  }
}

class Miscellaneou extends DataClass implements Insertable<Miscellaneou> {
  final int id;
  final String title;
  final String content;
  final String link;
  final String source;
  final bool like;
  final DateTime createdAt;
  const Miscellaneou(
      {required this.id,
      required this.title,
      required this.content,
      required this.link,
      required this.source,
      required this.like,
      required this.createdAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['title'] = Variable<String>(title);
    map['content'] = Variable<String>(content);
    map['link'] = Variable<String>(link);
    map['source'] = Variable<String>(source);
    map['like'] = Variable<bool>(like);
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  MiscellaneousCompanion toCompanion(bool nullToAbsent) {
    return MiscellaneousCompanion(
      id: Value(id),
      title: Value(title),
      content: Value(content),
      link: Value(link),
      source: Value(source),
      like: Value(like),
      createdAt: Value(createdAt),
    );
  }

  factory Miscellaneou.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Miscellaneou(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      content: serializer.fromJson<String>(json['content']),
      link: serializer.fromJson<String>(json['link']),
      source: serializer.fromJson<String>(json['source']),
      like: serializer.fromJson<bool>(json['like']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
      'content': serializer.toJson<String>(content),
      'link': serializer.toJson<String>(link),
      'source': serializer.toJson<String>(source),
      'like': serializer.toJson<bool>(like),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  Miscellaneou copyWith(
          {int? id,
          String? title,
          String? content,
          String? link,
          String? source,
          bool? like,
          DateTime? createdAt}) =>
      Miscellaneou(
        id: id ?? this.id,
        title: title ?? this.title,
        content: content ?? this.content,
        link: link ?? this.link,
        source: source ?? this.source,
        like: like ?? this.like,
        createdAt: createdAt ?? this.createdAt,
      );
  @override
  String toString() {
    return (StringBuffer('Miscellaneou(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('content: $content, ')
          ..write('link: $link, ')
          ..write('source: $source, ')
          ..write('like: $like, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, title, content, link, source, like, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Miscellaneou &&
          other.id == this.id &&
          other.title == this.title &&
          other.content == this.content &&
          other.link == this.link &&
          other.source == this.source &&
          other.like == this.like &&
          other.createdAt == this.createdAt);
}

class MiscellaneousCompanion extends UpdateCompanion<Miscellaneou> {
  final Value<int> id;
  final Value<String> title;
  final Value<String> content;
  final Value<String> link;
  final Value<String> source;
  final Value<bool> like;
  final Value<DateTime> createdAt;
  const MiscellaneousCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.content = const Value.absent(),
    this.link = const Value.absent(),
    this.source = const Value.absent(),
    this.like = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  MiscellaneousCompanion.insert({
    this.id = const Value.absent(),
    required String title,
    required String content,
    required String link,
    required String source,
    this.like = const Value.absent(),
    this.createdAt = const Value.absent(),
  })  : title = Value(title),
        content = Value(content),
        link = Value(link),
        source = Value(source);
  static Insertable<Miscellaneou> custom({
    Expression<int>? id,
    Expression<String>? title,
    Expression<String>? content,
    Expression<String>? link,
    Expression<String>? source,
    Expression<bool>? like,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (content != null) 'content': content,
      if (link != null) 'link': link,
      if (source != null) 'source': source,
      if (like != null) 'like': like,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  MiscellaneousCompanion copyWith(
      {Value<int>? id,
      Value<String>? title,
      Value<String>? content,
      Value<String>? link,
      Value<String>? source,
      Value<bool>? like,
      Value<DateTime>? createdAt}) {
    return MiscellaneousCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      content: content ?? this.content,
      link: link ?? this.link,
      source: source ?? this.source,
      like: like ?? this.like,
      createdAt: createdAt ?? this.createdAt,
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
    if (content.present) {
      map['content'] = Variable<String>(content.value);
    }
    if (link.present) {
      map['link'] = Variable<String>(link.value);
    }
    if (source.present) {
      map['source'] = Variable<String>(source.value);
    }
    if (like.present) {
      map['like'] = Variable<bool>(like.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MiscellaneousCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('content: $content, ')
          ..write('link: $link, ')
          ..write('source: $source, ')
          ..write('like: $like, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

abstract class _$StorageDbHelper extends GeneratedDatabase {
  _$StorageDbHelper(QueryExecutor e) : super(e);
  late final $MiscellaneousTable miscellaneous = $MiscellaneousTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [miscellaneous];
}
