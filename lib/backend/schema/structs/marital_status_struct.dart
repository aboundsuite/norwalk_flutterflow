// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MaritalStatusStruct extends BaseStruct {
  MaritalStatusStruct({
    String? single,
    String? married,
    String? widowed,
    String? divorced,
  })  : _single = single,
        _married = married,
        _widowed = widowed,
        _divorced = divorced;

  // "Single" field.
  String? _single;
  String get single => _single ?? '00eff91f-30cf-4259-8751-7eaff7248a0f';
  set single(String? val) => _single = val;

  bool hasSingle() => _single != null;

  // "Married" field.
  String? _married;
  String get married => _married ?? '6c89b5c3-447c-455b-964a-d350b05a4bd0';
  set married(String? val) => _married = val;

  bool hasMarried() => _married != null;

  // "Widowed" field.
  String? _widowed;
  String get widowed => _widowed ?? '49a31a25-12e6-4199-988d-a51edd2abbf4';
  set widowed(String? val) => _widowed = val;

  bool hasWidowed() => _widowed != null;

  // "Divorced" field.
  String? _divorced;
  String get divorced => _divorced ?? '3004c8b1-91f7-42f5-90d3-9abc676ff9c4';
  set divorced(String? val) => _divorced = val;

  bool hasDivorced() => _divorced != null;

  static MaritalStatusStruct fromMap(Map<String, dynamic> data) =>
      MaritalStatusStruct(
        single: data['Single'] as String?,
        married: data['Married'] as String?,
        widowed: data['Widowed'] as String?,
        divorced: data['Divorced'] as String?,
      );

  static MaritalStatusStruct? maybeFromMap(dynamic data) => data is Map
      ? MaritalStatusStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'Single': _single,
        'Married': _married,
        'Widowed': _widowed,
        'Divorced': _divorced,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Single': serializeParam(
          _single,
          ParamType.String,
        ),
        'Married': serializeParam(
          _married,
          ParamType.String,
        ),
        'Widowed': serializeParam(
          _widowed,
          ParamType.String,
        ),
        'Divorced': serializeParam(
          _divorced,
          ParamType.String,
        ),
      }.withoutNulls;

  static MaritalStatusStruct fromSerializableMap(Map<String, dynamic> data) =>
      MaritalStatusStruct(
        single: deserializeParam(
          data['Single'],
          ParamType.String,
          false,
        ),
        married: deserializeParam(
          data['Married'],
          ParamType.String,
          false,
        ),
        widowed: deserializeParam(
          data['Widowed'],
          ParamType.String,
          false,
        ),
        divorced: deserializeParam(
          data['Divorced'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'MaritalStatusStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MaritalStatusStruct &&
        single == other.single &&
        married == other.married &&
        widowed == other.widowed &&
        divorced == other.divorced;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([single, married, widowed, divorced]);
}

MaritalStatusStruct createMaritalStatusStruct({
  String? single,
  String? married,
  String? widowed,
  String? divorced,
}) =>
    MaritalStatusStruct(
      single: single,
      married: married,
      widowed: widowed,
      divorced: divorced,
    );
