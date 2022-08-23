// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable

extension GetUserCollection on Isar {
  IsarCollection<User> get users => getCollection();
}

const UserSchema = CollectionSchema(
  name: 'User',
  schema:
      '{"name":"User","idName":"id","properties":[{"name":"diaryLetters","type":"Long"},{"name":"diaryNumbers","type":"Long"},{"name":"lettersUntilNextLevel","type":"Long"},{"name":"level","type":"Long"},{"name":"name","type":"String"}],"indexes":[],"links":[]}',
  idName: 'id',
  propertyIds: {
    'diaryLetters': 0,
    'diaryNumbers': 1,
    'lettersUntilNextLevel': 2,
    'level': 3,
    'name': 4
  },
  listProperties: {},
  indexIds: {},
  indexValueTypes: {},
  linkIds: {},
  backlinkLinkNames: {},
  getId: _userGetId,
  setId: _userSetId,
  getLinks: _userGetLinks,
  attachLinks: _userAttachLinks,
  serializeNative: _userSerializeNative,
  deserializeNative: _userDeserializeNative,
  deserializePropNative: _userDeserializePropNative,
  serializeWeb: _userSerializeWeb,
  deserializeWeb: _userDeserializeWeb,
  deserializePropWeb: _userDeserializePropWeb,
  version: 3,
);

int? _userGetId(User object) {
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

void _userSetId(User object, int id) {
  object.id = id;
}

List<IsarLinkBase> _userGetLinks(User object) {
  return [];
}

void _userSerializeNative(IsarCollection<User> collection, IsarRawObject rawObj,
    User object, int staticSize, List<int> offsets, AdapterAlloc alloc) {
  var dynamicSize = 0;
  final value0 = object.diaryLetters;
  final _diaryLetters = value0;
  final value1 = object.diaryNumbers;
  final _diaryNumbers = value1;
  final value2 = object.lettersUntilNextLevel;
  final _lettersUntilNextLevel = value2;
  final value3 = object.level;
  final _level = value3;
  final value4 = object.name;
  final _name = IsarBinaryWriter.utf8Encoder.convert(value4);
  dynamicSize += (_name.length) as int;
  final size = staticSize + dynamicSize;

  rawObj.buffer = alloc(size);
  rawObj.buffer_length = size;
  final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeLong(offsets[0], _diaryLetters);
  writer.writeLong(offsets[1], _diaryNumbers);
  writer.writeLong(offsets[2], _lettersUntilNextLevel);
  writer.writeLong(offsets[3], _level);
  writer.writeBytes(offsets[4], _name);
}

User _userDeserializeNative(IsarCollection<User> collection, int id,
    IsarBinaryReader reader, List<int> offsets) {
  final object = User();
  object.diaryLetters = reader.readLong(offsets[0]);
  object.diaryNumbers = reader.readLong(offsets[1]);
  object.id = id;
  object.lettersUntilNextLevel = reader.readLong(offsets[2]);
  object.level = reader.readLong(offsets[3]);
  object.name = reader.readString(offsets[4]);
  return object;
}

P _userDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readLong(offset)) as P;
    case 3:
      return (reader.readLong(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

dynamic _userSerializeWeb(IsarCollection<User> collection, User object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'diaryLetters', object.diaryLetters);
  IsarNative.jsObjectSet(jsObj, 'diaryNumbers', object.diaryNumbers);
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  IsarNative.jsObjectSet(
      jsObj, 'lettersUntilNextLevel', object.lettersUntilNextLevel);
  IsarNative.jsObjectSet(jsObj, 'level', object.level);
  IsarNative.jsObjectSet(jsObj, 'name', object.name);
  return jsObj;
}

User _userDeserializeWeb(IsarCollection<User> collection, dynamic jsObj) {
  final object = User();
  object.diaryLetters =
      IsarNative.jsObjectGet(jsObj, 'diaryLetters') ?? double.negativeInfinity;
  object.diaryNumbers =
      IsarNative.jsObjectGet(jsObj, 'diaryNumbers') ?? double.negativeInfinity;
  object.id = IsarNative.jsObjectGet(jsObj, 'id');
  object.lettersUntilNextLevel =
      IsarNative.jsObjectGet(jsObj, 'lettersUntilNextLevel') ??
          double.negativeInfinity;
  object.level =
      IsarNative.jsObjectGet(jsObj, 'level') ?? double.negativeInfinity;
  object.name = IsarNative.jsObjectGet(jsObj, 'name') ?? '';
  return object;
}

P _userDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'diaryLetters':
      return (IsarNative.jsObjectGet(jsObj, 'diaryLetters') ??
          double.negativeInfinity) as P;
    case 'diaryNumbers':
      return (IsarNative.jsObjectGet(jsObj, 'diaryNumbers') ??
          double.negativeInfinity) as P;
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id')) as P;
    case 'lettersUntilNextLevel':
      return (IsarNative.jsObjectGet(jsObj, 'lettersUntilNextLevel') ??
          double.negativeInfinity) as P;
    case 'level':
      return (IsarNative.jsObjectGet(jsObj, 'level') ?? double.negativeInfinity)
          as P;
    case 'name':
      return (IsarNative.jsObjectGet(jsObj, 'name') ?? '') as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _userAttachLinks(IsarCollection col, int id, User object) {}

extension UserQueryWhereSort on QueryBuilder<User, User, QWhere> {
  QueryBuilder<User, User, QAfterWhere> anyId() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }
}

extension UserQueryWhere on QueryBuilder<User, User, QWhereClause> {
  QueryBuilder<User, User, QAfterWhereClause> idEqualTo(int id) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: id,
      includeLower: true,
      upper: id,
      includeUpper: true,
    ));
  }

  QueryBuilder<User, User, QAfterWhereClause> idNotEqualTo(int id) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(
        IdWhereClause.lessThan(upper: id, includeUpper: false),
      ).addWhereClauseInternal(
        IdWhereClause.greaterThan(lower: id, includeLower: false),
      );
    } else {
      return addWhereClauseInternal(
        IdWhereClause.greaterThan(lower: id, includeLower: false),
      ).addWhereClauseInternal(
        IdWhereClause.lessThan(upper: id, includeUpper: false),
      );
    }
  }

  QueryBuilder<User, User, QAfterWhereClause> idGreaterThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: id, includeLower: include),
    );
  }

  QueryBuilder<User, User, QAfterWhereClause> idLessThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: id, includeUpper: include),
    );
  }

  QueryBuilder<User, User, QAfterWhereClause> idBetween(
    int lowerId,
    int upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: lowerId,
      includeLower: includeLower,
      upper: upperId,
      includeUpper: includeUpper,
    ));
  }
}

extension UserQueryFilter on QueryBuilder<User, User, QFilterCondition> {
  QueryBuilder<User, User, QAfterFilterCondition> diaryLettersEqualTo(
      int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'diaryLetters',
      value: value,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> diaryLettersGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'diaryLetters',
      value: value,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> diaryLettersLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'diaryLetters',
      value: value,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> diaryLettersBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'diaryLetters',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> diaryNumbersEqualTo(
      int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'diaryNumbers',
      value: value,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> diaryNumbersGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'diaryNumbers',
      value: value,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> diaryNumbersLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'diaryNumbers',
      value: value,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> diaryNumbersBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'diaryNumbers',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> idIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'id',
      value: null,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> idEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> idGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> idLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> idBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'id',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> lettersUntilNextLevelEqualTo(
      int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'lettersUntilNextLevel',
      value: value,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition>
      lettersUntilNextLevelGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'lettersUntilNextLevel',
      value: value,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> lettersUntilNextLevelLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'lettersUntilNextLevel',
      value: value,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> lettersUntilNextLevelBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'lettersUntilNextLevel',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> levelEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'level',
      value: value,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> levelGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'level',
      value: value,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> levelLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'level',
      value: value,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> levelBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'level',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> nameGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> nameLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'name',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> nameContains(String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> nameMatches(String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'name',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }
}

extension UserQueryLinks on QueryBuilder<User, User, QFilterCondition> {}

extension UserQueryWhereSortBy on QueryBuilder<User, User, QSortBy> {
  QueryBuilder<User, User, QAfterSortBy> sortByDiaryLetters() {
    return addSortByInternal('diaryLetters', Sort.asc);
  }

  QueryBuilder<User, User, QAfterSortBy> sortByDiaryLettersDesc() {
    return addSortByInternal('diaryLetters', Sort.desc);
  }

  QueryBuilder<User, User, QAfterSortBy> sortByDiaryNumbers() {
    return addSortByInternal('diaryNumbers', Sort.asc);
  }

  QueryBuilder<User, User, QAfterSortBy> sortByDiaryNumbersDesc() {
    return addSortByInternal('diaryNumbers', Sort.desc);
  }

  QueryBuilder<User, User, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<User, User, QAfterSortBy> sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<User, User, QAfterSortBy> sortByLettersUntilNextLevel() {
    return addSortByInternal('lettersUntilNextLevel', Sort.asc);
  }

  QueryBuilder<User, User, QAfterSortBy> sortByLettersUntilNextLevelDesc() {
    return addSortByInternal('lettersUntilNextLevel', Sort.desc);
  }

  QueryBuilder<User, User, QAfterSortBy> sortByLevel() {
    return addSortByInternal('level', Sort.asc);
  }

  QueryBuilder<User, User, QAfterSortBy> sortByLevelDesc() {
    return addSortByInternal('level', Sort.desc);
  }

  QueryBuilder<User, User, QAfterSortBy> sortByName() {
    return addSortByInternal('name', Sort.asc);
  }

  QueryBuilder<User, User, QAfterSortBy> sortByNameDesc() {
    return addSortByInternal('name', Sort.desc);
  }
}

extension UserQueryWhereSortThenBy on QueryBuilder<User, User, QSortThenBy> {
  QueryBuilder<User, User, QAfterSortBy> thenByDiaryLetters() {
    return addSortByInternal('diaryLetters', Sort.asc);
  }

  QueryBuilder<User, User, QAfterSortBy> thenByDiaryLettersDesc() {
    return addSortByInternal('diaryLetters', Sort.desc);
  }

  QueryBuilder<User, User, QAfterSortBy> thenByDiaryNumbers() {
    return addSortByInternal('diaryNumbers', Sort.asc);
  }

  QueryBuilder<User, User, QAfterSortBy> thenByDiaryNumbersDesc() {
    return addSortByInternal('diaryNumbers', Sort.desc);
  }

  QueryBuilder<User, User, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<User, User, QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<User, User, QAfterSortBy> thenByLettersUntilNextLevel() {
    return addSortByInternal('lettersUntilNextLevel', Sort.asc);
  }

  QueryBuilder<User, User, QAfterSortBy> thenByLettersUntilNextLevelDesc() {
    return addSortByInternal('lettersUntilNextLevel', Sort.desc);
  }

  QueryBuilder<User, User, QAfterSortBy> thenByLevel() {
    return addSortByInternal('level', Sort.asc);
  }

  QueryBuilder<User, User, QAfterSortBy> thenByLevelDesc() {
    return addSortByInternal('level', Sort.desc);
  }

  QueryBuilder<User, User, QAfterSortBy> thenByName() {
    return addSortByInternal('name', Sort.asc);
  }

  QueryBuilder<User, User, QAfterSortBy> thenByNameDesc() {
    return addSortByInternal('name', Sort.desc);
  }
}

extension UserQueryWhereDistinct on QueryBuilder<User, User, QDistinct> {
  QueryBuilder<User, User, QDistinct> distinctByDiaryLetters() {
    return addDistinctByInternal('diaryLetters');
  }

  QueryBuilder<User, User, QDistinct> distinctByDiaryNumbers() {
    return addDistinctByInternal('diaryNumbers');
  }

  QueryBuilder<User, User, QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<User, User, QDistinct> distinctByLettersUntilNextLevel() {
    return addDistinctByInternal('lettersUntilNextLevel');
  }

  QueryBuilder<User, User, QDistinct> distinctByLevel() {
    return addDistinctByInternal('level');
  }

  QueryBuilder<User, User, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('name', caseSensitive: caseSensitive);
  }
}

extension UserQueryProperty on QueryBuilder<User, User, QQueryProperty> {
  QueryBuilder<User, int, QQueryOperations> diaryLettersProperty() {
    return addPropertyNameInternal('diaryLetters');
  }

  QueryBuilder<User, int, QQueryOperations> diaryNumbersProperty() {
    return addPropertyNameInternal('diaryNumbers');
  }

  QueryBuilder<User, int?, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<User, int, QQueryOperations> lettersUntilNextLevelProperty() {
    return addPropertyNameInternal('lettersUntilNextLevel');
  }

  QueryBuilder<User, int, QQueryOperations> levelProperty() {
    return addPropertyNameInternal('level');
  }

  QueryBuilder<User, String, QQueryOperations> nameProperty() {
    return addPropertyNameInternal('name');
  }
}
