// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserStruct extends BaseStruct {
  UserStruct({
    String? uid,
    String? displayName,
    String? createTime,
    String? churchID,
    String? male,
    String? female,
    String? userEmail,
  })  : _uid = uid,
        _displayName = displayName,
        _createTime = createTime,
        _churchID = churchID,
        _male = male,
        _female = female,
        _userEmail = userEmail;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  set uid(String? val) => _uid = val;

  bool hasUid() => _uid != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  set displayName(String? val) => _displayName = val;

  bool hasDisplayName() => _displayName != null;

  // "create_time" field.
  String? _createTime;
  String get createTime => _createTime ?? '';
  set createTime(String? val) => _createTime = val;

  bool hasCreateTime() => _createTime != null;

  // "churchID" field.
  String? _churchID;
  String get churchID => _churchID ?? 'c211d4d6-6a6d-4dd7-b268-6c032d770e8f';
  set churchID(String? val) => _churchID = val;

  bool hasChurchID() => _churchID != null;

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

  // "userEmail" field.
  String? _userEmail;
  String get userEmail => _userEmail ?? '';
  set userEmail(String? val) => _userEmail = val;

  bool hasUserEmail() => _userEmail != null;

  static UserStruct fromMap(Map<String, dynamic> data) => UserStruct(
        uid: data['uid'] as String?,
        displayName: data['display_name'] as String?,
        createTime: data['create_time'] as String?,
        churchID: data['churchID'] as String?,
        male: data['Male'] as String?,
        female: data['Female'] as String?,
        userEmail: data['userEmail'] as String?,
      );

  static UserStruct? maybeFromMap(dynamic data) =>
      data is Map ? UserStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'uid': _uid,
        'display_name': _displayName,
        'create_time': _createTime,
        'churchID': _churchID,
        'Male': _male,
        'Female': _female,
        'userEmail': _userEmail,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'uid': serializeParam(
          _uid,
          ParamType.String,
        ),
        'display_name': serializeParam(
          _displayName,
          ParamType.String,
        ),
        'create_time': serializeParam(
          _createTime,
          ParamType.String,
        ),
        'churchID': serializeParam(
          _churchID,
          ParamType.String,
        ),
        'Male': serializeParam(
          _male,
          ParamType.String,
        ),
        'Female': serializeParam(
          _female,
          ParamType.String,
        ),
        'userEmail': serializeParam(
          _userEmail,
          ParamType.String,
        ),
      }.withoutNulls;

  static UserStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserStruct(
        uid: deserializeParam(
          data['uid'],
          ParamType.String,
          false,
        ),
        displayName: deserializeParam(
          data['display_name'],
          ParamType.String,
          false,
        ),
        createTime: deserializeParam(
          data['create_time'],
          ParamType.String,
          false,
        ),
        churchID: deserializeParam(
          data['churchID'],
          ParamType.String,
          false,
        ),
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
        userEmail: deserializeParam(
          data['userEmail'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserStruct &&
        uid == other.uid &&
        displayName == other.displayName &&
        createTime == other.createTime &&
        churchID == other.churchID &&
        male == other.male &&
        female == other.female &&
        userEmail == other.userEmail;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([uid, displayName, createTime, churchID, male, female, userEmail]);
}

UserStruct createUserStruct({
  String? uid,
  String? displayName,
  String? createTime,
  String? churchID,
  String? male,
  String? female,
  String? userEmail,
}) =>
    UserStruct(
      uid: uid,
      displayName: displayName,
      createTime: createTime,
      churchID: churchID,
      male: male,
      female: female,
      userEmail: userEmail,
    );
