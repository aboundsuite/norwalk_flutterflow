import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import '/backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  bool _like = false;
  bool get like => _like;
  set like(bool value) {
    _like = value;
  }

  bool _saved = false;
  bool get saved => _saved;
  set saved(bool value) {
    _saved = value;
  }

  String _Male = '01e2d573-98f4-4b7a-bf80-4e4a732255bd';
  String get Male => _Male;
  set Male(String value) {
    _Male = value;
  }

  String _Female = '7f5627cf-8aa3-47c2-b559-86a8c3084df8';
  String get Female => _Female;
  set Female(String value) {
    _Female = value;
  }
}
