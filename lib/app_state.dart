import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

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

  String _answer = '';
  String get answer => _answer;
  set answer(String _value) {
    _answer = _value;
  }

  List<dynamic> _answer1 = [jsonDecode('{}')];
  List<dynamic> get answer1 => _answer1;
  set answer1(List<dynamic> _value) {
    _answer1 = _value;
  }

  void addToAnswer1(dynamic _value) {
    _answer1.add(_value);
  }

  void removeFromAnswer1(dynamic _value) {
    _answer1.remove(_value);
  }

  void removeAtIndexFromAnswer1(int _index) {
    _answer1.removeAt(_index);
  }

  void updateAnswer1AtIndex(
    int _index,
    dynamic Function(dynamic) updateFn,
  ) {
    _answer1[_index] = updateFn(_answer1[_index]);
  }

  void insertAtIndexInAnswer1(int _index, dynamic _value) {
    _answer1.insert(_index, _value);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
