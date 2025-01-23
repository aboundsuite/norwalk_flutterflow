// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GenderStruct extends BaseStruct {
  GenderStruct({
    String? male,
    String? female,
  })  : _male = male,
        _female = female;

  // "Male" field.
  String? _male;
  String get male => _male ?? '01e2d573-98f4-4b7a-bf80-4e4a732255bd';
  set male(String? val) => _male = val;

  bool hasMale() => _male != null;

  // "Female" field.
  String? _female;
  String get female => _female ?? '7f5627cf-8aa3-47c2-b559-86a8c3084df8';
  set female(String? val) => _female = val;

  bool hasFemale() => _female != null;

  static GenderStruct fromMap(Map<String, dynamic> data) => GenderStruct(
        male: data['Male'] as String?,
        female: data['Female'] as String?,
      );

  static GenderStruct? maybeFromMap(dynamic data) =>
      data is Map ? GenderStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'Male': _male,
        'Female': _female,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Male': serializeParam(
          _male,
          ParamType.String,
        ),
        'Female': serializeParam(
          _female,
          ParamType.String,
        ),
      }.withoutNulls;

  static GenderStruct fromSerializableMap(Map<String, dynamic> data) =>
      GenderStruct(
        male: deserializeParam(
          data['Male'],
          ParamType.String,
          false,
        ),
        female: deserializeParam(
          data['Female'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'GenderStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is GenderStruct &&
        male == other.male &&
        female == other.female;
  }

  @override
  int get hashCode => const ListEquality().hash([male, female]);
}

GenderStruct createGenderStruct({
  String? male,
  String? female,
}) =>
    GenderStruct(
      male: male,
      female: female,
    );
