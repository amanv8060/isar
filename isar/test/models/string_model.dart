import 'package:isar/isar.dart';

import '../isar.g.dart';
import 'package:isar_annotation/isar_annotation.dart';

@Collection()
class StringModel {
  @Id()
  int? id;

  @Index(indexType: IndexType.hash)
  String? hashField = '';

  @Index(indexType: IndexType.value)
  String? valueField = '';

  @Index(indexType: IndexType.words)
  String? wordsField = '';

  @override
  String toString() {
    return '{field: $valueField, field: $hashField, field: $wordsField}';
  }

  StringModel();

  StringModel.init(String? value)
      : hashField = value,
        valueField = value,
        wordsField = value;

  @override
  bool operator ==(other) {
    if (other is StringModel) {
      return hashField == other.hashField &&
          valueField == other.valueField &&
          wordsField == other.wordsField;
    }
    return false;
  }
}
